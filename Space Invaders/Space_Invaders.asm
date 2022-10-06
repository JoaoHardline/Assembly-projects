jmp main ; pula para o comeco do programa (main)
msn1: string "YOU WON !!!" ;mensagem ao eliminar todos os aliens.
msn2: string "The earth has been invaded, and it's you fault!" ;mensagem ao ser eliminado por algum alien.
msn0: string "Do you want to play again? <y/n>" ;mensagem ao fim de uma gameplay, ganhando ou perdendo.


main:
	call ClearScreen ; chama a funcao que limpa a tela para comecar o jogo




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


