jmp main ; pula para o comeco do programa (main)

msn1: string "YOU WON !!!" ;mensagem ao eliminar todos os aliens.
msn2: string "The earth has been invaded, and it's your fault!" ;mensagem ao ser eliminado por algum alien.
msn0: string "Do you want to play again? <y/n>" ;mensagem ao fim de uma gameplay, ganhando ou perdendo.

posNave: var #1 ; guarda posicao atual da maquina
posTiroNave: var #1 ; guarda posicao do tiro

posAlien1: var #1 ; guarda posicao atual do alien1
posTiroAlien1: var #1 ; guarda posicao do tiro do alien1

posAlien2: var #1 ; guarda  posicao atual do alien2
posTiroAlien2: var #1 ; guarda posicao do tiro do alien2
 
posAlien3: var #1 ; guarda posicao atual do alien3
posTiroAlien3: var #1 ; guarda posicao do tiro do alien3

posAlien4: var #1 ; guarda posicao atual do alien4
posTiroAlien4: var #1 ; guarda posicao do tiro do alien4
;----------------------------------------------------------------------------------------


;----------------------------------------------------------------------------------------
main:
	call ClearScreen ; chama a funcao que limpa a tela para comecar o jogo




;-----------------------------------------------------------------------------------------




;------------------------------------------------------------------------------------------
ClearScreen: ; funcao para limpar a tela
	push r0
	push r1
	
	loadn r0, #1080   ;apaga as 1080 posicoes do jogo na tela
	load r1, " "	  ;coloca o caractere espaco para simular uma tela vazia (apagar)
	
		ClearScreen_Loop:
			dec r0 ; dec decrementa um operador em 1 (r0--)
			outchar r1, r0 
			jnz ClearScreen_Loop ; se for != 0, volta ao inicio, concretizando o loop
		
	pop r1
	pop r0
	rts
;------------------------------------------------------------------------------------------






;------------------------------------------------------------------------------------------
; cria uma tela vazia para ser preenchida em tempo de execucao:
tela0Linha0  : string "  .                                     "
tela0Linha1  : string "                                        "
tela0Linha2  : string "                                        "
tela0Linha3  : string "                             .          "
tela0Linha4  : string "                                        "
tela0Linha5  : string "                                        "
tela0Linha6  : string "                                        "
tela0Linha7  : string "                                        "
tela0Linha8  : string "                                        "
tela0Linha9  : string "                                        "
tela0Linha10 : string "                                        "
tela0Linha11 : string "                                        "
tela0Linha12 : string "                                        "
tela0Linha13 : string "                                        "
tela0Linha14 : string "                                        "
tela0Linha15 : string "                                        "
tela0Linha16 : string "                                        "
tela0Linha17 : string "                                        "
tela0Linha18 : string "                                        "
tela0Linha19 : string "                                        "
tela0Linha20 : string "           .                            "
tela0Linha21 : string "                                        "
tela0Linha22 : string "                                        "
tela0Linha23 : string "                                        "
tela0Linha24 : string "                                        "
tela0Linha25 : string "                                        "
tela0Linha26 : string "                                        "
tela0Linha27 : string "                                        "
tela0Linha28 : string "                                        "
tela0Linha29 : string "                                        "	

; cria e preenche tela linha por linha (30 caracteres):
tela1Linha0  : string "                                        "
tela1Linha1  : string "                                        "
tela1Linha2  : string "                                        "
tela1Linha3  : string "                                        "
tela1Linha4  : string "                                        "
tela1Linha5  : string "                                        "
tela1Linha6  : string "                                        "
tela1Linha7  : string "                                        "
tela1Linha8  : string "        .                               "
tela1Linha9  : string "                                        "
tela1Linha10 : string "                                        "
tela1Linha11 : string "                                        "
tela1Linha12 : string "                                        "
tela1Linha13 : string "                                        "
tela1Linha14 : string "                                        "
tela1Linha15 : string "                                        "
tela1Linha16 : string "                                        "
tela1Linha17 : string "                                        "
tela1Linha18 : string "                                        "
tela1Linha19 : string "                                        "
tela1Linha20 : string "                                        "
tela1Linha21 : string "                                        "
tela1Linha22 : string "                                        "
tela1Linha23 : string "                                        "
tela1Linha24 : string "                                        "
tela1Linha25 : string "                         .              "
tela1Linha26 : string "                                        "
tela1Linha27 : string "                                        "
tela1Linha28 : string "                                        "
tela1Linha29 : string "                                        "



; cria e preenche tela linha por linha (30 caracteres):
tela2Linha0  : string "                                        "
tela2Linha1  : string "                                        "
tela2Linha2  : string "                                        "
tela2Linha3  : string "                                        "
tela2Linha4  : string "                                        "
tela2Linha5  : string "                       .                "
tela2Linha6  : string "                                        "
tela2Linha7  : string "                                        "
tela2Linha8  : string "                                        "
tela2Linha9  : string "                                        "
tela2Linha10 : string "                                        "
tela2Linha11 : string "                                        "
tela2Linha12 : string "                                        "
tela2Linha13 : string "                                        "
tela2Linha14 : string "                                        "
tela2Linha15 : string "                                        "
tela2Linha16 : string "                                        "
tela2Linha17 : string "                                        "
tela2Linha18 : string "                                        "
tela2Linha19 : string "                                        "
tela2Linha20 : string "                                        "
tela2Linha21 : string "                                        "
tela2Linha22 : string "                                        "
tela2Linha23 : string "                                        "
tela2Linha24 : string "                                        "
tela2Linha25 : string "                                        "
tela2Linha26 : string "                                        "
tela2Linha27 : string "                                        "
tela2Linha28 : string "                                        "
tela2Linha29 : string "                                        "


; cria e preenche tela linha por linha (30 caracteres):
tela3Linha0  : string "                                        "
tela3Linha1  : string "                                 .      "
tela3Linha2  : string "                                        "
tela3Linha3  : string "                                        "
tela3Linha4  : string "           .                            "
tela3Linha5  : string "                                        "
tela3Linha6  : string "            .                           "
tela3Linha7  : string "                                        "
tela3Linha8  : string "                                        "
tela3Linha9  : string "                                        "
tela3Linha10 : string "                                        "
tela3Linha11 : string "                                        "
tela3Linha12 : string "               .                        "
tela3Linha13 : string "                                        "
tela3Linha14 : string "                                        "
tela3Linha15 : string "                                        "
tela3Linha16 : string "                                        "
tela3Linha17 : string "                                        "
tela3Linha18 : string "                       .                "
tela3Linha19 : string "                                        "
tela3Linha20 : string "                .                       "
tela3Linha21 : string "                                        "
tela3Linha22 : string "                                        "
tela3Linha23 : string "                                        "
tela3Linha24 : string "                                        "
tela3Linha25 : string "                                        "
tela3Linha26 : string "                                        "
tela3Linha27 : string "                                        "
tela3Linha28 : string "                                        "
tela3Linha29 : string "                                        "


; cria e preenche tela linha por linha (30 caracteres)
tela4Linha0  : string "                                        "
tela4Linha1  : string "                                        "
tela4Linha2  : string "                                        "
tela4Linha3  : string "                                        "
tela4Linha4  : string "                                        "
tela4Linha5  : string "                                        "
tela4Linha6  : string "                               .        "
tela4Linha7  : string "                                        "
tela4Linha8  : string "     .                                  "
tela4Linha9  : string "                                        "
tela4Linha10 : string "                                        "
tela4Linha11 : string "                                        "
tela4Linha12 : string "                                        "
tela4Linha13 : string "                                        "
tela4Linha14 : string "                                        "
tela4Linha15 : string "                                        "
tela4Linha16 : string "                 .                      "
tela4Linha17 : string "                                        "
tela4Linha18 : string "                                        "
tela4Linha19 : string "                                 .      "
tela4Linha20 : string "                                        "
tela4Linha21 : string "                                        "
tela4Linha22 : string "                                        "
tela4Linha23 : string "                                        "
tela4Linha24 : string "                                        "
tela4Linha25 : string "              ............              "
tela4Linha26 : string "          ....................          "
tela4Linha27 : string "      ............................      "
tela4Linha28 : string "   ..................................   "
tela4Linha29 : string "........................................"
