#INCLUDE <P16F628A.INC>		;ARQUIVO PADRÃO MICROCHIP PARA 16F628A
RADIX DEC
__CONFIG H'3F10'

	CBLOCK	0x20	;ENDEREÇO INICIAL DA MEMÓRIA DE USUÁRIO
	CONTADOR1
	CONTADOR2
	CONTADOR3
	ENDC			;FIM DO BLOCO DE MEMÓRIA		

#DEFINE	BOTAO	PORTA,2	;PORTA DO BOTÃO
						; 0 -> PRESSIONADO
						; 1 -> LIBERADO

#DEFINE	TERREO	 PORTB,0 ;PORTA DO LED DO TERREO
#DEFINE ANDAR1 	 PORTB,1 ;PORTA DO LED DO PRIMEIRO ANDAR
#DEFINE ANDAR2 	 PORTB,2 ;PORTA DO LED DO SEGUNDO ANDAR
#DEFINE ANDAR3 	 PORTB,3 ;PORTA DO LED DO TERCEIRO ANDAR
#DEFINE ANDAR4 	 PORTB,4 ;PORTA DO LED DO QUARTO ANDAR
#DEFINE CONTROLE PORTB,5 ;PORTA DO LED DO CONTROLE
						 ; 0 -> APAGADO
						 ; 1 -> ACESO

	ORG	0x00		;ENDEREÇO INICIAL DE PROCESSAMENTO
	GOTO	INICIO
	
INICIO
	CLRF	PORTA		;LIMPA O PORTA
	CLRF	PORTB		;LIMPA O PORTB
	BSF STATUS, RP0			;ALTERA PARA O BANCO 1
	MOVLW	B'00000100'
	MOVWF	TRISA		;DEFINE RA2 COMO ENTRADA E DEMAIS COMO SAÍDAS
	CLRF	TRISB		;DEFINE TODO O PORTB COMO SAÍDA
	CLRF	INTCON		;TODAS AS INTERRUPÇÕES DESLIGADAS
	BCF STATUS, RP0 ;RETORNA PARA O BANCO 0
	MOVLW	B'00000111'
	MOVWF	CMCON		;DEFINE O MODO DO COMPARADOR ANALÓGICO

; -----------------------   MAIN   ------------------------------------------

MAIN

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF TERREO		;ACENDE O LED DO TERREO
	BCF ANDAR1		;APAGA O LED DO ANDAR4
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS
	
	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

;----------------------------------------------------------------

	BCF TERREO		;APAGA O LED DO CONTROLE
	BSF ANDAR1		;ACENDE O LED DO ANDAR1
	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

;----------------------------------------------------------------

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BCF ANDAR1		;APAGA O LED DO ANDAR1
	BSF ANDAR2		;ACENDE O LED DO ANDAR2
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS
	
	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

;---------------------------------------------------------------

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BCF ANDAR2		;APAGA O LED DO ANDAR2
	BSF ANDAR3		;ACENDE O LED DO ANDAR3
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

;---------------------------------------------------------------

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BCF ANDAR3		;APAGA O LED DO ANDAR3
	BSF ANDAR4		;ACENDE O LED DO ANDAR4
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

; ------------------------------------------------------------

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BCF ANDAR4		;APAGA O LED DO ANDAR2
	BSF ANDAR3		;ACENDE O LED DO ANDAR3
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

;---------------------------------------------------------------

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BCF ANDAR3		;APAGA O LED DO ANDAR1
	BSF ANDAR2		;ACENDE O LED DO ANDAR2
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS
	
	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

;---------------------------------------------------------------	

	BCF ANDAR2		;APAGA O LED DO CONTROLE
	BSF ANDAR1		;ACENDE O LED DO ANDAR1
	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASO		;ATRASO DE 1.000882 SEGUNDOS

;----------------------------------------------------------------

	GOTO MAIN		;REPETE

; --------------------	FUNCAO PARA DEMORAR 1 SEC ---------------------------

ATRASO
	
	MOVLW	29		;NUMERO DE REPETICOES DO PRIMEIRO FOR
	MOVWF	CONTADOR1	;CONTADOR1 = 29

ATRASO1
	MOVLW	60		;NUMERO DE REPETICOES DO SEGUNDO FOR
	MOVWF	CONTADOR2	;CONTADOR2 = 60

; ----------------- TESTE BOTAO PRECIONADO ----------------------------------
	BTFSC	BOTAO		;O BOTÃO ESTÁ PRESSIONADO?
	GOTO	BOTAO_LIB	;NÃO, ENTÃO TRATA BOTÃO LIBERADO
	GOTO	BOTAO_PRES	;SIM, ENTÃO TRATA BOTÃO PRESSIONADO
; ---------------------------------------------------------------------------

BOTAO_LIB
	NOP
	NOP
	CALL 	ATRASO2		;CHAMA SEGUNDO FOR
	DECFSZ	CONTADOR1	;CONTADOR1 = CONTADOR1 -1
	GOTO 	ATRASO1 	;REPETE PRIMEIRO FOR
	RETURN				;RETORNA PARA ONDE FOI CHAMADO

ATRASO2
	MOVLW	188			;NUMERO DE REPETICOES DO TERCEIRO FOR
	MOVWF	CONTADOR3	;CONTADOR3 = 188
	NOP
	NOP
	NOP
	CALL 	ATRASO3		;CHAMA TERCEIRO FOR
	DECFSZ	CONTADOR2	;CONTADOR2 = CONTADOR2 -1
	GOTO 	ATRASO2 	;VAI PARA ATRASO1
	RETURN				;RETORNA PARA ONDE FOI CHAMADO

ATRASO3
	DECFSZ CONTADOR3
	GOTO ATRASO3
	RETURN

BOTAO_PRES
	BTFSS	ANDAR2			;O BOTÃO FOI PRESSIONADO NO SEGUNDO ANDAR?
	GOTO	TESTE_ANDAR3	;NÃO, ENTÃO TESTA SE ESTA NO TERCEIRO ANDAR
	GOTO	ESTA_ANDAR2		;SIM, ENTÃO TRATA CASO ESTEJA NO SEGUNDO ANDAR

TESTE_ANDAR3
	BTFSS	ANDAR3			;O BOTÃO FOI PRESSIONADO NO TERCEIRO ANDAR?
	GOTO	TESTE_ANDAR4	;NÃO, ENTÃO TESTA SE ESTA NO QUARTO ANDAR
	GOTO	ESTA_ANDAR3		;SIM, ENTÃO TRATA CASO ESTEJA NO TERCEIRO ANDAR

TESTE_ANDAR4
	BTFSS	ANDAR4			;O BOTÃO FOI PRESSIONADO NO QUARTO ANDAR?
	GOTO	TESTE_ANDAR1		;NÃO, ENTÃO ESTA NO PRIMEIRO
	GOTO	ESTA_ANDAR4		;SIM, ENTÃO TRATA CASO ESTEJA NO QUARTO ANDAR

TESTE_ANDAR1
	BTFSS	ANDAR1			;O BOTÃO FOI PRESSIONADO NO QUARTO ANDAR?
	GOTO	ESTA_TERREO		;NÃO, ENTÃO ESTA NO PRIMEIRO
	GOTO	ESTA_ANDAR1		;SIM, ENTÃO TRATA CASO ESTEJA NO QUARTO ANDAR

ESTA_TERREO

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF TERREO		;ACENDE O LED DO PRIMEIRO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	GOTO MAIN		;VOLTA AO CICLO NORMAL

ESTA_ANDAR1

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR1		;ACENDE O LED DO PRIMEIRO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF ANDAR1		;APAGA O LED DO PRIMEIRO ANDAR
	BSF TERREO		;ACENDE A LUZ DO TERREO
	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	GOTO MAIN		;VOLTA AO CICLO NORMAL

ESTA_ANDAR2

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR2		;ACENDE O LED DO SEGUNDO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR1		;ACENDE O LED DO PRIMEIRO ANDAR
	BCF ANDAR2		;APAGA O LED DO SEGUNDO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF ANDAR1		;APAGA O LED DO PRIMEIRO ANDAR
	BSF TERREO		;ACENDE A LUZ DO TERREO
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	GOTO MAIN		;VOLTA AO CICLO NORMAL

ESTA_ANDAR3

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR3		;ACENDE O LED DO TERCEIRO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR2		;ACENDE O LED DO SEGUNDO ANDAR
	BCF ANDAR3		;APAGA O LED DO TERCEIRO ANDAR 
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR1		;ACENDE O LED DO PRIMEIRO ANDAR
	BCF ANDAR2		;APAGA O LED DO SEGUNDO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF ANDAR1		;APAGA O LED DO PRIMEIRO ANDAR
	BSF TERREO		;ACENDE A LUZ DO TERREO
	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	GOTO MAIN		;VOLTA AO CICLO NORMAL

ESTA_ANDAR4

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR4		;ACENDE O LED DO TERCEIRO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BCF ANDAR4		;APAGA O LED DO QUARTO ANDAR
	BSF ANDAR3		;ACENDE O LED DO TERCEIRO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR2		;ACENDE O LED DO SEGUNDO ANDAR
	BCF ANDAR3		;APAGA O LED DO TERCEIRO ANDAR 
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	BSF ANDAR1		;ACENDE O LED DO PRIMEIRO ANDAR
	BCF ANDAR2		;APAGA O LED DO SEGUNDO ANDAR
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF ANDAR1		;APAGA O LED DO PRIMEIRO ANDAR
	BSF TERREO		;ACENDE A LUZ DO TERREO
	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BSF CONTROLE	;ACENDE O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	BCF CONTROLE	;APAGA O LED DO CONTROLE
	CALL ATRASOS		;ATRASO DE 1.000882 SEGUNDOS

	GOTO MAIN		;VOLTA AO CICLO NORMAL

; --------------------	FUNCAO PARA DEMORAR 1 SEC SEM TESTAR ----------------

ATRASOS
	
	MOVLW	29		;NUMERO DE REPETICOES DO PRIMEIRO FOR
	MOVWF	CONTADOR1	;CONTADOR1 = 3

ATRASO1S
	MOVLW	60		;NUMERO DE REPETICOES DO SEGUNDO FOR
	MOVWF	CONTADOR2	;CONTADOR2 = 3

	NOP
	NOP
	CALL 	ATRASO2S		;CHAMA SEGUNDO FOR
	DECFSZ	CONTADOR1	;CONTADOR1 = CONTADOR1 -1
	GOTO 	ATRASO1S 	;REPETE PRIMEIRO FOR
	RETURN				;RETORNA PARA ONDE FOI CHAMADO

ATRASO2S
	MOVLW	188			;NUMERO DE REPETICOES DO TERCEIRO FOR
	MOVWF	CONTADOR3	;CONTADOR3 = 3
	NOP
	NOP
	NOP
	CALL 	ATRASO3S		;CHAMA TERCEIRO FOR
	DECFSZ	CONTADOR2	;CONTADOR2 = CONTADOR2 -1
	GOTO 	ATRASO2S 	;VAI PARA ATRASO1
	RETURN				;RETORNA PARA ONDE FOI CHAMADO

ATRASO3S
	DECFSZ CONTADOR3
	GOTO ATRASO3S
	RETURN

; ---------------------------------------------------------------------------

	END			;OBRIGATÓRIO


