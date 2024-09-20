#########################################
#					#
#            Joy's Chase	 	#
# 	     Created by:		#
#    Davi Galvao and Eric Harris    	#
#					#
#########################################

.data
# Positions:
joyStart: 	.half 152,145
angerStart: 	.half 152,81
sadStart:	.half 168,81
disgustStart:	.half 136,81
fearStart:	.half 120,81

joyPos: 	.half 152,145
joyOld: 	.half 152,145
angerPos: 	.half 152,81
angerOld: 	.half 152,81
sadPos:		.half 152,81
sadOld:	        .half 152,81
disgustPos:	.half 152,81
disgustOld:	.half 152,81
fearPos:	.half 152,81
fearOld:	.half 152,81

# Info:
lifes:		.half 3
high:		.word 0
score:		.word 0
angerMov:	.half 0		# Mov => 0 up / 1 left / 2 down / 3 right (cima eh o padrao == 0)
disgustMov:	.half 0		

sadSide:	.half 0		# Side => 0/1 = right // 2/3 = left
fearSide:	.half 0		

# s2 = joySide 			
# s3 = lvl
# s4 = points condition
# s6 = sprite sad
# s7 = sprite fear
# s8 = sprite anger
# s9 = sprite disgust
# a6 = disgust Side
# s10 = timer powerup
# s11 = powerup state


#Music:
# numero de Notas a tocar
num: .word 640
# lista de notas e duracoes
notas:  59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230, 59, 230, 47, 230, 45, 230, 59, 230, 47, 230, 45, 230, 57, 230, 55, 230, 57, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 55, 230, 45, 230, 47, 230, 57, 230, 55, 230, 54, 230, 59, 230, 47, 230, 60, 230, 50, 230, 60, 230, 59, 230, 55, 230, 53, 230, 48, 230, 45, 230, 57, 230, 48, 230, 45, 230, 55, 230, 53, 230, 55, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 48, 230, 53, 230, 45, 230, 48, 230, 55, 230, 53, 230, 52, 230, 57, 230, 45, 230, 53, 230, 60, 230, 59, 230, 57, 230, 53, 230 
.include "data files/MACROSv21.s"

.text 
# OBS1: Para fins de alcance de branch, utilizamos uma estruturacao criativa do codigo.
# OBS2:	Para compreender a movimentacao/colisao dos personagens, vide fearLoop.
# Todas as movimentacoes e colisoes seguem o mesmo parametro.
# OBS3:	Todas as verificacoes de colisao possuem o eixo X somado com 7 por motivos de bug.
mainMenu:
	la a0,menu		# printa o menu	
	li a1,0			
	li a2,0
	li a3,0
	call print
	j music
	
killSound:
	li a2,118 	       	# define o instrumento para notas
        li a3,80       		# define o volume para notas
        li a0,70       		# le o valor da nota
   	li a1,220        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
	ecall
	ret
	
music: 
	la s0,num       	# define o endereço do número de notas
        lw s1,0(s0)     	# le o numero de notas
        la s0,notas     	# define o endereço das notas
        li t0,0         	# zera o contador de notas
        li a2,32        	# define o instrumento para notas
        li a3,127      		# define o volume para notas

musicLoop:  
        beq t0,s1,restart     	# se o contador chegou no final, vá para REINICIA
       	call keyboard	
       	
        lw a0,0(s0)        	# le o valor da nota
        lw a1,4(s0)        	# le a duracao da nota
        li a7,31           	# define a chamada de syscall para tocar nota
        ecall              	# toca a nota

        addi a1,a1,-5		# reduzir a pausa pra evitar pausa abrupta nas notas
        mv a0,a1           	# move duracao da nota para a pausa
        li a7,32           	# define a chamada de syscal para pausa
        ecall               	# realiza uma pausa de a0 ms

        addi s0,s0,8     	# incrementa para o endereço da próxima nota
        addi t0,t0,1      	# incrementa o contador de notas

        j musicLoop        	# volta ao loop

restart:
 	j music			# reinicia a musica

fearStart1:
	la t0,score
	la t1,high
	lw t2,0(t0)
	lw t3,0(t1)
	addi t2,t2,50		# aumenta a pontuacao em 50 e salva
	addi t3,t3,50		# aumenta o high em 50 e salva
	sw t2,0(t0)
	sw t3,0(t1)
	call killSound		
	la t0,fearPos
	la t1,fearOld		# salva a posicao atual na antiga
	lw a1,0(t0)
	sw a1,0(t1)
	la t1,fearStart		# reseta a posicao do fear para o inicio	
	lw a1,0(t1)
	sw a1,0(t0)
	j continueLoop3

# Fear: comportamento aleatorio em perseguicao // comportamento fortuito em fuga
fearLoop:
	beqz s3,collisionF1	# carrega o mapa de colisao
	la s1,collisionmap2
	j continueF1
collisionF1: 
	la s1,collisionmap1
continueF1:
	li a7,42
	li a1,4			# a7 = 42 ==> gerador de numero aleatorio de a1 opcoes (4)
	ecall			# numero escolhido equivale a movimentacao do fear
	beqz a0,fearUp
	li t1,1
	beq a0,t1,fearLeft
	li t1,2
	beq a0,t1,fearDown
	li t1,3
	beq a0,t1,fearRight

endFear: 
	la t0,fearPos
	lh t1,0(t0)
	lh t2,2(t0)
	la t0,joyPos
	lh t3,0(t0)
	lh t4,2(t0)
	
	beq t1,t3,xEqualF	# compara o X de ambos: se for igual, compara o Y: se Y for igual, perda de vida (sem powerup) 
	j continueLoop3
xEqualF:
	beqz s11,LF1
	beq t2,t4,fearStart1
	j continueLoop3
	
LF1:	beq t2,t4,loseLife
	j continueLoop3
	
fearUp:
	la t0,fearPos
	lh t3,0(t0) 		# t3 = X
	lh t4,2(t0)		# t4 = Y
	
	addi t4,t4,-8		# checar em baixo do fearPos
	addi t3,t3,8		# checar em cima do fearPos
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		# t3 = X + 320*Y (Posicao do ponto de checagem)
	
	add t3,t3,s1		# endereco mapa + coord
	
	li t5,173		# 173 = cor das paredes
	lbu t6,0(t3)		# carrega a cor do byte na coordenada de t3
	beq t5,t6,fearRight
	la t3,fearOld
	lw t4,0(t0)		# carrega a posicao atual do anger
	sw t4,0(t3)		# salva a posicao antiga para poder apagar
	
	lh t3,2(t0)		# t3 = y da fearPos
	addi t3,t3,-16
	sh t3,2(t0)
	
	la t0,fearSide		# escolhe o sprite para animacao (se for right 1, troca pro 2 e mesma coisa para o left e vice versa)
	lh t1,0(t0)
	beqz t1,fDR1
	li t2,1
	beq t1,t2,fDR0
	li t2,2
	beq t1,t2,fDL1
	
fDL0:
	li t2,2
	sh t2,0(t0)
	j endFear
	
fDL1:
	li t2,3
	sh t2,0(t0)
	j endFear
	
fDR0:
	sh zero,0(t0)
	j endFear
	
fDR1:
	li t2,1
	sh t2,0(t0)
	j endFear
	
fearDown:
	la t0,fearPos
	lh t3,0(t0) 		# t3 = X
	lh t4,2(t0)		# t4 = Y
	
	addi t4,t4,24		# checar em baixo do fearPos
	addi t3,t3,8		# checar em cima do fearPos
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		# t3 = X + 320*Y (Posicao do ponto de checagem)

	add t3,t3,s1		# endereco mapa + coord
	
	li t5,173		# 173 = cor das paredes
	lbu t6,0(t3)		# carrega a cor do byte na coordenada de t3
	beq t5,t6,fearLeft
	la t3,fearOld
	lw t4,0(t0)		# carrega a posicao atual do anger
	sw t4,0(t3)		# salva a posicao antiga para poder apagar
	
	lh t3,2(t0)		# t3 = y da fearPos
	addi t3,t3,16
	sh t3,2(t0)
	
	la t0,fearSide
	lh t1,0(t0)
	beqz t1,fUR1
	li t2,1
	beq t1,t2,fUR0
	li t2,2
	beq t1,t2,fUL1
	
fUL0:
	li t2,2
	sh t2,0(t0)
	j endFear
	
fUL1:
	li t2,3
	sh t2,0(t0)
	j endFear
	
fUR0:
	sh zero,0(t0)
	j endFear
	
fUR1:
	li t2,1
	sh t2,0(t0)
	j endFear
	
fearRight:
	la t0,fearPos
	lh t3,0(t0) 		# t3 = X
	lh t4,2(t0)		# t4 = Y
	
	addi t3,t3,24		# checar em baixo do fearPos
	addi t3,t3,8		# checar em cima do fearPos
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		# t3 = X + 320*Y (Posicao do ponto de checagem)

	add t3,t3,s1		# endereco mapa + coord
	
	li t5,173		# 173 = cor das paredes
	lbu t6,0(t3)		# carrega a cor do byte na coordenada de t3
	beq t5,t6,fearDown
	la t3,fearOld
	lw t4,0(t0)		# carrega a posicao atual do anger
	sw t4,0(t3)		# salva a posicao antiga para poder apagar
	
	lh t3,0(t0)		# t3 = x da fearPos
	addi t3,t3,16
	sh t3,0(t0)
	
	la t0,fearSide
	lh t1,0(t0)
	beqz t1,fR1
fR2:
	sh zero,0(t0)
	j endFear
fR1:	
	li t1,1
	sh t1,0(t0)	
	j endFear
	
fearLeft:
	la t0,fearPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t3,t3,-8		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		

	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,fearUp
	la t3,fearOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,0(t0)			
	addi t3,t3,-16
	sh t3,0(t0)
	
	la t0,fearSide
	lh t1,0(t0)
	li t2,2
	beq t1,t2,fL1
	
fL2:
	li t1,2
	sh t1,0(t0)	
	j endFear
fL1:	
	li t1,3
	sh t1,0(t0)	
	j endFear

map_1:	
	la t0,angerMov
	sh zero,0(t0)		# define o movimento do anger para cima
	
	la t0,lifes
	li t1,3
	sh t1,0(t0)
	
	li a2,99 	       	# define o instrumento para notas
        li a3,60       		# define o volume para notas
        li a0,80       		# le o valor da nota
   	li a1,40        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
	ecall
	li s11,0		# sem powerup 
	li s10,35		# reinicia o timer do powerup
	li s3,0			# define o mapa 1
	la t0,score
	sw zero,0(t0) 		# zera o score
	li s4,0			# zera o contador de bolinhas
	
	li a0,0			# reinicia os registradores (a fim de evitar bugs)
        li a1,0
        li a2,0
        li a3,0
        li t0,0
        li s0,0
        li s1,0
	
	la a0,map1		# printa o mapa 1
	li a1,0
	li a2,0
	li a3,0
	call print
	
	la t0,joyStart		#  reinicia as posicoes das emocoes
	la t1,joyPos
	la t2,joyOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,angerStart
	la t1,angerPos
	la t2,angerOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,sadStart
	la t1,sadPos
	la t2,sadOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,disgustStart
	la t1,disgustPos
	la t2,disgustOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,fearStart
	la t1,fearPos
	la t2,fearOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	j gameLoop
	
loseLife:
	j LOSELIFE		# branch temporario para evitar problemas de alcance
	ret	
	
sadStart1:
	la t0,score
	la t1,high
	lw t2,0(t0)
	lw t3,0(t1)
	addi t2,t2,50		# aumenta a pontuacao em 50 e salva
	addi t3,t3,50		# aumenta o high em 50 e salva
	sw t2,0(t0)
	sw t3,0(t1)
	call killSound
	la t0,sadPos
	la t1,sadOld
	lw a1,0(t0)
	sw a1,0(t1)
	la t1,sadStart
	lw a1,0(t1)
	sw a1,0(t0)
	j continueLoop4	
					
#Sad: aproximacao pelo eixo de maior comprimento // fuga para os cantos												
sadLoop:
	#s5 = cont de Mov
	li t5,0
	li t6,0
	li s5,0
	beqz s3,collisionS1
	la s1,collisionmap2
	j continueS1
collisionS1: 
	la s1,collisionmap1
continueS1:
	la t0,sadPos
	lh t1,0(t0)
	lh t2,2(t0)
	la t0,joyPos
	lh t3,0(t0)
	lh t4,2(t0)
	sub t1,t1,t3		# t1 = delta X (sad - joy)
	sub t2,t2,t4		# t2 = delta Y
	
	beqz t1,sadVer		# caso eles estejam em mesmo valor de X/Y, avanca no eixo oposto
	beqz t2,sadHor		# se nao, avanca no eixo de maior delta
	bgt t1,t2,sadHor
	bgt t2,t1,sadVer
	j sadHor
endSad: 
	la t0,sadPos
	lh t1,0(t0)
	lh t2,2(t0)
	la t0,joyPos
	lh t3,0(t0)
	lh t4,2(t0)
	
	beq t1,t3,xEqual
	j continueLoop4
xEqual:
	beqz s11,LF2
	beq t2,t4,sadStart1
	j continueLoop4

LF2:
	beq t2,t4,loseLife
	j continueLoop4
	
sadVer:
	# tenta fazer 2 movimentos (em direcoes opostas) para evitar ficar travada
	# ex: eixo X (n conseguiu) -> eixo Y
	addi s5,s5,1
	li t3,3
	beq s5,t3,endSad
	li t3,0
	bnez s11,sadVR2
sadVR1:
	bgt t2,t3,sadUp
	j sadDown
sadVR2:
	bgt t2,t3,sadDown
	j sadUp
		
sadDown:
	la t0,sadPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t4,t4,24		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		

	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,sadHor	# tenta andar na direcao perpendicular
	la t3,sadOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,2(t0)			
	addi t3,t3,16
	sh t3,2(t0)
	
	la t0,sadSide
	lh t1,0(t0)
	beqz t1,sDR1
	li t2,1
	beq t1,t2,sDR0
	li t2,2
	beq t1,t2,sDL1
	
sDL0:
	li t2,2
	sh t2,0(t0)
	j endSad
	
sDL1:
	li t2,3
	sh t2,0(t0)
	j endSad
	
sDR0:
	sh zero,0(t0)
	j endSad
	
sDR1:
	li t2,1
	sh t2,0(t0)
	j endSad
	
sadUp:
	la t0,sadPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t4,t4,-8		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		
	
	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,sadHor	# tenta andar na direcao perpendicular
	la t3,sadOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,2(t0)			
	addi t3,t3,-16
	sh t3,2(t0)
	
	la t0,sadSide
	lh t1,0(t0)
	beqz t1,sUR1
	li t2,1
	beq t1,t2,sUR0
	li t2,2
	beq t1,t2,sUL1
	
sUL0:
	li t2,2
	sh t2,0(t0)
	j endSad
	
sUL1:
	li t2,3
	sh t2,0(t0)
	j endSad
	
sUR0:
	sh zero,0(t0)
	j endSad
	
sUR1:
	li t2,1
	sh t2,0(t0)
	j endSad

sadHor:
	addi s5,s5,1
	li t3,3
	beq s5,t3,endSad
	li t3,0
	bnez s11,sadHR2
sadHR1:
	bgt t1,t3,sadLeft
	j sadRight
sadHR2:
	bgt t1,t3,sadRight
	j sadLeft
	
sadRight:
	la t0,sadPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t3,t3,24		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		

	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,sadVer	# tenta andar na direcao perpendicular
	la t3,sadOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,0(t0)			
	addi t3,t3,16
	sh t3,0(t0)
	
	la t0,sadSide
	lh t1,0(t0)
	beqz t1,sR1
	
sR2:
	sh zero,0(t0)	
	j endSad
sR1:	
	li t1,1
	sh t1,0(t0)	
	j endSad
	
sadLeft:
	la t0,sadPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t3,t3,-8		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		

	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,sadVer	# tenta andar na direcao perpendicular
	la t3,sadOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,0(t0)			
	addi t3,t3,-16
	sh t3,0(t0)
	
	la t0,sadSide
	lh t1,0(t0)
	li t2,2
	beq t1,t2,sL1
	
sL2:
	li t1,2
	sh t1,0(t0)	
	j endSad
sL1:	
	li t1,3
	sh t1,0(t0)	
	j endSad	
	
map_2:	
	la t0,angerMov
	sh zero,0(t0)		
	
	la t0,lifes
	li t1,3
	sh t1,0(t0)
	
	li a2,99 	       	# define o instrumento para notas
        li a3,60       		# define o volume para notas
        li a0,80       		# le o valor da nota
   	li a1,40        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
	ecall
	li s11,0		# sem powerup
	li s10,35		# zera o timer do powerup
	li s3,1			# define mapa 2
	la t0,score
	sw zero,0(t0) 		# zera o score
	li s4,0			# zera o contador de bolinhas
	
	li a0,0			# zera os registradores
        li a1,0
        li a2,0
        li a3,0
        li t0,0
        li s0,0
        li s1,0
	
	la a0,map2		# printa o mapa 2
	li a1,0
	li a2,0
	li a3,0
	call print
	
	la t0,joyStart		# reinicia as posicoes das emocoes
	la t1,joyPos
	la t2,joyOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,angerStart
	la t1,angerPos
	la t2,angerOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,sadStart
	la t1,sadPos
	la t2,sadOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,disgustStart
	la t1,disgustPos
	la t2,disgustOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	
	la t0,fearStart
	la t1,fearPos
	la t2,fearOld
	lw a1,0(t0)
	sw a1,0(t1)
	sw a1,0(t2)
	j gameLoop

# funcao principal do jogo	
gameLoop:
	la t0,lifes
	lh t1,0(t0)
	beqz t1,gameOver	# verifica se o numero de vidas eh igual a 0, se for, vai para gameOver
	
    	mv a0,t1
    	li a1,56
    	li a2,231
    	li a3,0x00FF
    	li a4,0
  	li a7,101
    	ecall			# printa o numero de vidas 
    
	j points	
continueLoop1:
	call keyboard		# chama a funcao do teclado (KDMMIO)
continueLoop2:
	j fearLoop		# vai para a IA do fear	
continueLoop3:
	j sadLoop		# vai para a IA da sad
continueLoop4:
	j disgustLoop		# vai para a IA da disgust
continueLoop5:
	j angerLoop		# vai para a IA do anger
continueLoop6:
	li t0,1
	beq s11,t0,powCont	# verifica se eh estado de powerup, se sim, vai para powCont
	
	la t0,fearSide		# sistema para definir os sprites de cada emocao (animacao dos personagens)
	lh t1,0(t0)
	beqz t1,fM0
	li t0,1
	beq t1,t0,fM1
	li t0,2
	beq t1,t0,fM2
	
fM3:
	la s7,fearleft2
	j c1

fM2:
	la s7,fearleft1
	j c1
	
fM1:
	la s7,fearright2
	j c1	

fM0:
	la s7,fearright1

c1:	
	la t0,sadSide
	lh t1,0(t0)
	beqz t1,sM0
	li t0,1
	beq t1,t0,sM1
	li t0,2
	beq t1,t0,sM2
	
sM3:
	la s6,sadleft2
	j c2

sM2:
	la s6,sadleft1
	j c2
	
sM1:
	la s6,sadright2
	j c2	

sM0:
	la s6,sadright1
	
c2:
	beqz a6,dM0
	li t0,1
	beq a6,t0,dM1
	li t0,2
	beq a6,t0,dM2
	
dM3:
	la s9,disgustleft2
	j c3

dM2:
	la s9,disgustleft1
	j c3
	
dM1:
	la s9,disgustright2
	j c3	

dM0:
	la s9,disgustright1

c3:
	beqz s2,jM0
	li t0,1
	beq s2,t0,jM1
	li t0,2
	beq s2,t0,jM2

jM3:	
	la a4,joyleft1
	la s8,angernormal1
	j continueLoop7

jM2:	
	la a4,joyleft2
	la s8,angernormal2
	j continueLoop7
	
jM1:	
	la a4,joyright2
	la s8,angernormal1
	j continueLoop7
	
jM0:	
	la a4,joyright1
	la s8,angernormal2
	j continueLoop7
	
powCont:
	#musica powerup
	li a2,93 	       	# define o instrumento para notas
        li a3,100       	# define o volume para notas
        li a0,80       		# le o valor da nota
   	li a1,20        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
	ecall
	addi s10,s10,-1		# diminui o timer em 1
	
	la t0,fearSide		# definicao dos sprites dos personagens em estado de super
	lh t1,0(t0)
	beqz t1,fMP0
	li t0,1
	beq t1,t0,fMP1
	li t0,2
	beq t1,t0,fMP2
	
fMP3:
	la s7,fearpowerleft2
	j c4

fMP2:
	la s7,fearpowerleft1
	j c4
	
fMP1:
	la s7,fearpowerright2
	j c4	

fMP0:
	la s7,fearpowerright1

c4:
	la t0,sadSide
	lh t1,0(t0)
	beqz t1,sMP0
	li t0,1
	beq t1,t0,sMP1
	li t0,2
	beq t1,t0,sMP2
	
sMP3:
	la s6,sadpowerleft2
	j c5

sMP2:
	la s6,sadpowerleft1
	j c5
	
sMP1:
	la s6,sadpowerright2
	j c5	

sMP0:
	la s6,sadpowerright1
	
c5:
	beqz a6,dMP0
	li t0,1
	beq a6,t0,dMP1
	li t0,2
	beq a6,t0,dMP2
	
dMP3:
	la s9,disgustpowerleft2
	j c6

dMP2:
	la s9,disgustpowerleft1
	j c6
	
dMP1:
	la s9,disgustpowerright2
	j c6	

dMP0:
	la s9,disgustpowerright1

c6:
	beqz s2,jMP0
	li t0,1
	beq s2,t0,jMP1
	li t0,2
	beq s2,t0,jMP2

jMP3:	
	la a4,joypowerleft1
	la s8,angerpower2
	beqz s10,resetPow	# se o tempo for igual a 0, vai para resetPow
	j continueLoop7

jMP2:	
	la a4,joypowerleft2
	la s8,angerpower1
	beqz s10,resetPow
	j continueLoop7
	
jMP1:	
	la a4,joypowerright2
	la s8,angerpower2
	beqz s10,resetPow
	j continueLoop7
	
jMP0:	
	la a4,joypowerright1
	la s8,angerpower1
	beqz s10,resetPow
	j continueLoop7
	
resetPow:
	li s11,0		# zera o estado de powerup e o timer			
	li s10,30
						
continueLoop7:
	la t0,joyOld
	la a0,tile
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print
	
	mv a0,a4
	la t0,joyPos		
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print
	
	# na antiga posicao das emocoes verifica se era ponto, tile ou powerup e printa o respectivo
	la t0,sadOld
	lh a1,0(t0)		
	lh a2,2(t0)
	li t1,320
	mul a2,a2,t1
	addi a1,a1,8
	add a1,a1,a2
	beqz s3,map1Col1
	la t1,collisionmap2
	j C1
map1Col1:
	la t1,collisionmap1	
C1:
	add a1,a1,t1
	lbu t4,0(a1)		
	beqz t4,pTile1
	li t1,232
	beq t4,t1,pPower1

pPoint1:
	la a0,pointstile
	j C2
pPower1:
	la a0,poweruptile
	j C2
pTile1:
	la a0,tile

C2:	
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print
	
	mv a0,s6
	la t0,sadPos
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print
	
	la t0,fearOld
	lh a1,0(t0)
	lh a2,2(t0)
	li t1,320
	mul a2,a2,t1
	addi a1,a1,8
	add a1,a1,a2
	beqz s3,map1Col2
	la t1,collisionmap2
	j C3
map1Col2:
	la t1,collisionmap1	
C3:
	add a1,a1,t1
	lbu t4,0(a1)		
	beqz t4,pTile2
	li t1,232
	beq t4,t1,pPower2

pPoint2:
	la a0,pointstile
	j C4
pPower2:
	la a0,poweruptile
	j C4
pTile2:
	la a0,tile

C4:	
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print
	
	mv a0,s7
	la t0,fearPos
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print

    	la t0,angerOld
	lh a1,0(t0)
    	lh a2,2(t0)
    	li t1,320
    	mul a2,a2,t1
    	addi a1,a1,8
    	add a1,a1,a2
    	beqz s3,map1Col3
    	la t1,collisionmap2
    	j C5
map1Col3:
    	la t1,collisionmap1
C5:
    	add a1,a1,t1
    	lbu t4,0(a1)
    	beqz t4,pTile3
    	li t1,232
    	beq t4,t1,pPower3

pPoint3:
    	la a0,pointstile
    	j C6
pPower3:
   	la a0,poweruptile
    	j C6
pTile3:
    	la a0,tile

C6:
    	lh a1,0(t0)
    	lh a2,2(t0)
    	li a3,0
    	call print
    	
    	mv a0,s8
	la t0,angerPos
    	lh a1,0(t0)
    	lh a2,2(t0)
    	li a3,0
    	call print
	
	la t0,disgustOld
	lh a1,0(t0)
	lh a2,2(t0)
	li t1,320
	mul a2,a2,t1
	addi a1,a1,8
	add a1,a1,a2
	beqz s3,map1Col4
	la t1,collisionmap2
	j C7
map1Col4:
	la t1,collisionmap1	
C7:
	add a1,a1,t1
	lbu t4,0(a1)		
	beqz t4,pTile4
	li t1,232
	beq t4,t1,pPower4

pPoint4:
	la a0,pointstile
	j C8
pPower4:
	la a0,poweruptile
	j C8
pTile4:
	la a0,tile

C8:	
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print
	
	mv a0,s9
	la t0,disgustPos
	lh a1,0(t0)
	lh a2,2(t0)
	li a3,0
	call print
	
	li a0,200		# faz o programa dar um sleep por 0,2 segundos
	li a7,32
	ecall
	j gameLoop		# volta para o gameLoop

disgustStart1:
	la t0,score
	la t1,high
	lw t2,0(t0)
	lw t3,0(t1)
	addi t2,t2,50		# aumenta a pontuacao em 50 e salva
	addi t3,t3,50		# aumenta o high em 50 e salva
	sw t2,0(t0)
	sw t3,0(t1)
	call killSound
	la a0,disgustPos
	la a1,disgustOld
	lw t0,0(a0)
	sw t0,0(a1)
	la a1,disgustStart
	lw t0,0(a1)
	sw t0,0(a0)
	j continueLoop5

#Disgust: espelhamento da movimentacao do jogador em perseguicao // contraposicao da movimentacao de perseguicao em fuga
disgustLoop: 
	# powerup: faz a movimentacao identica a da joy
	la t0,disgustMov
	lh t1,0(t0)
	beqz s11,disChase
	
	beqz t1,disgustUp
	li t0,1
	beq t1,t0,disgustLeft
	li t0,2
	beq t1,t0,disgustDown
	li t0,3
	beq t1,t0,disgustRight
	
disChase:
	# normal: faz a movimentacao oposta a da joy	
	beqz t1,disgustDown
	li t0,1
	beq t1,t0,disgustRight
	li t0,2
	beq t1,t0,disgustUp
	li t0,3
	beq t1,t0,disgustLeft
	
endDisgust:
	la t0,disgustPos
	lh t1,0(t0)
	lh t2,2(t0)
	la t0,joyPos
	lh t3,0(t0)
	lh t4,2(t0)
	
	beq t1,t3,xEqualD1
	j continueLoop5
xEqualD1:
	beqz s11,LF4
	beq t2,t4,disgustStart1
	j continueLoop5
	
LF4:	beq t2,t4,loseLife
	j continueLoop5	
	
disgustUp:
	beqz s3,collisionD11
	la s1,collisionmap2
	j continueD11
collisionD11: 
	la s1,collisionmap1
continueD11:
	la t0,disgustPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t4,t4,-8		
	addi t3,t3,7		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		
	
	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,endDisgust
	la t3,disgustOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,2(t0)			
	addi t3,t3,-16
	sh t3,2(t0)
	
	la t0,disgustMov
	li t1,0
	sh t1,0(t0)
	
	beqz a6,dUR1
	li t2,1
	beq a6,t2,dUR0
	li t2,2
	beq a6,t2,dUL1
	
dUL0:
	li a6,2
	j endDisgust
	
dUL1:
	li a6,3
	j endDisgust
	
dUR0:
	li a6,0
	j endDisgust
	
dUR1:
	li a6,1
	j endDisgust

disgustDown:
	beqz s3,collisionD12
	la s1,collisionmap2
	j continueD12
collisionD12: 
	la s1,collisionmap1
continueD12:
	la t0,disgustPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t4,t4,24		
	addi t3,t3,7		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4	
	
	add t3,t3,s1	
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,endDisgust
	la t3,disgustOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,2(t0)			
	addi t3,t3,16
	sh t3,2(t0)
	
	la t0,disgustMov
	li t1,2
	sh t1,0(t0)

	beqz a6,dDR1
	li t2,1
	beq a6,t2,dDR0
	li t2,2
	beq a6,t2,dDL1
	
dDL0:
	li a6,2
	j endDisgust
	
dDL1:
	li a6,3
	j endDisgust
	
dDR0:
	li a6,0
	j endDisgust
	
dDR1:
	li a6,1
	j endDisgust

disgustRight:
	beqz s3,collisionD13
	la s1,collisionmap2
	j continueD13
collisionD13: 
	la s1,collisionmap1
continueD13:
	la t0,disgustPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t3,t3,24		
	addi t3,t3,7		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		
	
	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,endDisgust
	la t3,disgustOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,0(t0)			
	addi t3,t3,16
	sh t3,0(t0)
	
	la t0,disgustMov
	li t1,3
	sh t1,0(t0)
	
	beqz a6,dR1
	
dR2:
	li a6,0	
	j endDisgust
dR1:	
	li a6,1	
	j endDisgust

disgustLeft:
	beqz s3,collisionD14
	la s1,collisionmap2
	j continueD14
collisionD14: 
	la s1,collisionmap1
continueD14:
	la t0,disgustPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t3,t3,-8		
	addi t3,t3,7		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		
	
	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,endDisgust
	la t3,disgustOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,0(t0)			
	addi t3,t3,-16
	sh t3,0(t0)
	
	la t0,disgustMov
	li t1,1
	sh t1,0(t0)
	
	li t2,2
	beq a6,t2,dL1
	
dL2:
	li a6,2	
	j endDisgust
dL1:	
	li a6,3
	j endDisgust

gg: 	j GG			# branchs temporarias para evitar problemas de alcance			
gameOver: j GAMEOVER

keyboard:		
	li t1,0xFF200000	# carrega o endereco de controle do KDMMIO
	lw t0,0(t1)		# le bit de controle do teclado
	andi t0,t0,0x0001	# mascara o bit menos significativo
   	beqz t0,endKeyboard	# se nao ha tecla pressionada, vai para endKeyboard
  	lw t2,4(t1)  		# le o valor da tecla apertada
  	
  	li t0,'1'
  	beq t2,t0,map_1
  	
  	li t0,'2'
  	beq t2,t0,map_2
  	
  	li t0,'w'
  	beq t2,t0,joyUp
  	
  	li t0,'s'
  	beq t2,t0,joyDown
  	
  	li t0,'a'
  	beq t2,t0,joyLeft
  	
  	li t0,'d'
  	beq t2,t0,joyRight
  	
  	li t0,'0'
  	beq t2,t0,closeGame
  	
endKeyboard: ret

angerStart1:
	la t0,score
	la t1,high
	lw t2,0(t0)
	lw t3,0(t1)
	addi t2,t2,50		# aumenta a pontuacao em 50 e salva
	addi t3,t3,50		# aumenta o high em 50 e salva
	sw t2,0(t0)
	sw t3,0(t1)
	la t0,angerMov
	sh zero,0(t0)		# define a movimentacao do raiva para cima 
	call killSound
	la t0,angerPos
	la t1,angerOld
	lw a1,0(t0)
	sw a1,0(t1)
	la t1,angerStart
	lw a1,0(t1)
	sw a1,0(t0)
	j continueLoop6

#Anger: movimentacao em linha reta circular pelo perimetro do mapa em sentido anti-horario quando esta em perseguicao // troca de sentido quando esta em fuga 
angerLoop:
	# se nao houver colisao, segue na mesma direcao
	la t0,angerMov
	lh t1,0(t0)
	beqz t1,angerUp1
	li t0,1
	beq t1,t0,angerLeft1
	li t0,2
	beq t1,t0,angerDown1
	li t0,3
	beq t1,t0,angerRight1
		
angerChoose:
	beqz s11,aChase	
	# powerup: colide na parede e inverte a movimentacao
	la t0,angerMov
	lh t1,0(t0)
	beqz t1,angerC1
	addi t1,t1,-1
	sh t1,0(t0)
	j angerLoop
angerC1:
	li t1,3
	sh t1,0(t0)
	j angerLoop
	
aChase:	
	# anda no sentido anti-horario
	la t0,angerMov
	lh t1,0(t0)
	li t2,3
	beq t1,t2,angerC2
	addi t1,t1,1
	sh t1,0(t0)
	j angerLoop
angerC2:
	li t1,0
	sh t1,0(t0)
	j angerLoop
	
endAnger:
	la t0,angerPos
	lh t1,0(t0)
	lh t2,2(t0)
	la t0,joyPos
	lh t3,0(t0)
	lh t4,2(t0)
	
	beq t1,t3,xEqualA123
	j continueLoop6
xEqualA123:
	beqz s11,LF3
	beq t2,t4,angerStart1
	j continueLoop6
	
LF3:	beq t2,t4,loseLife
	j continueLoop6
	
angerRight1:
	la t0,angerPos
	lh t3,0(t0) 			
	lh t4,2(t0)			
	
	addi t3,t3,24			
	addi t3,t3,8			
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4			

	add t3,t3,s1			
	
	li t5,173			
	lbu t6,0(t3)			
	beq t5,t6,angerChoose	# se colidir, troca para o proximo lado
	la t3,angerOld
	lw t4,0(t0)			
	sw t4,0(t3)			
	
	lh t3,0(t0)			
	addi t3,t3,16
	sh t3,0(t0)
	
	la t0,angerMov
	li t1,3
	sh t1,0(t0)
	
	j endAnger
	
angerLeft1:
	la t0,angerPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t3,t3,-8		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		

	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,angerChoose	# se colidir, troca para o proximo lado
	la t3,angerOld
	lw t4,0(t0)		
	sw t4,0(t3)		
	
	lh t3,0(t0)		
	addi t3,t3,-16
	sh t3,0(t0)
	
	la t0,angerMov
	li t1,1
	sh t1,0(t0)
	
	j endAnger
	
angerUp1:
	la t0,angerPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t4,t4,-8		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		
	
	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,angerChoose	# se colidir, troca para o proximo lado
	la t3,angerOld
	lw t4,0(t0)		
	sw t4,0(t3)		
	
	lh t3,2(t0)		
	addi t3,t3,-16
	sh t3,2(t0)
	
	la t0,angerMov
	li t1,0
	sh t1,0(t0)
	
	j endAnger
	
angerDown1:
	la t0,angerPos
	lh t3,0(t0) 		
	lh t4,2(t0)		
	
	addi t4,t4,24		
	addi t3,t3,8		
	li t5,320
	mul t4,t4,t5
	add t3,t3,t4		

	add t3,t3,s1		
	
	li t5,173		
	lbu t6,0(t3)		
	beq t5,t6,angerChoose	# se colidir, troca para o proximo lado
	la t3,angerOld
	lw t4,0(t0)		
	sw t4,0(t3)		
	
	lh t3,2(t0)		
	addi t3,t3,16
	sh t3,2(t0)
	
	la t0,angerMov
	li t1,2
	sh t1,0(t0)
	
	j endAnger

print:	
	j PRINT			# label temporaria
	ret

points:
	la t0,score		# printa a pontuacao e o high score (soma de pontos das fases)
    	lw a0,0(t0)
    	li a1,56
    	li a2,4
    	li a3,0x00FF
    	li a4,0
  	li a7,101
    	ecall
    	
    	la t0,high
    	lw a0,0(t0)
    	li a1,160
    	li a2,4
    	li a3,0x00FF
    	li a4,0
  	li a7,101
  	ecall
  	
	beqz s3,collision1
	la t0,collisionmap2
	j continuePoints
	
collision1:
	la t0,collisionmap1
	
continuePoints:
	la t1,joyPos
	lh t2,0(t1)
	lh t3,2(t1)
	li t4,320
	mul t3,t3,t4
	addi t2,t2,8
	add t2,t2,t3		# t2 = coordenada da joy
	add t0,t0,t2		# t0 = mapa colisao + coordenada
	
	lbu t1,0(t0)		# carrega a cor do byte na coordenada de t0
	beqz t1,continueLoop1	# se a cor for 0, retorna
	
	li t2,232
	beq t1,t2,PowerUp1	# se o byte for 232 (azul), vai para PowerUp1

	#som point
	li a2,96 	       	# define o instrumento para notas
        li a3,20       		# define o volume para notas
        li a0,80       		# le o valor da nota
   	li a1,40        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
	ecall

CP:	
	sw zero,0(t0)		# transforma o pixel em preto no mapa de colisao
	addi s4,s4,1		# soma 1 no contador de bolinhas 
	
	la t0,score
	la t1,high
	lw t2,0(t0)
	lw t3,0(t1)
	addi t2,t2,10		# aumenta a pontuacao em 10 e salva
	addi t3,t3,10		# aumenta o high em 10 e salva
	sw t2,0(t0)
	sw t3,0(t1)

	beqz s3,map1Win
map2Win: 
	li t5,141
	beq s4,t5,gg		# se todas as bolinhas foram pegas, vitoria!
	j continuePoints2
	
map1Win:
	li t5,135
	beq s4,t5,map_2		# se todas as bolinhas foram pegas, fase 2
	j continuePoints2
	
PowerUp1:
	#som powerup
	li a2,98 	       	# define o instrumento para notas
        li a3,35       		# define o volume para notas
        li a0,80       		# le o valor da nota
   	li a1,40        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
	ecall
	li s11,1		# define o powerup em 1
	li s10,35		# reinicia a pontuacao
	j CP	
	
continuePoints2:
  	j continueLoop1   
 	    
joyUp:	
	j checkU		# verifica a colisao
continueUp:
	la t0,joyPos
	la t1,joyOld
	lw t2,0(t0)
	sw t2,0(t1)		# salva a posicao antiga para poder apagar
	
	lh t1,2(t0)
	addi t1,t1,-16
	sh t1,2(t0)
	
	la t0,disgustMov
	li t1,0
	sh t1,0(t0)
	
	beqz s2,jUR1
	li t0,1
	beq s2,t0,jUR0
	li t0,2
	beq s2,t0,jUL1
	
jUL0:
	li s2,2
	j continueLoop2
	
jUL1:
	li s2,3
	j continueLoop2
	
jUR0:
	li s2,0
	j continueLoop2
	
jUR1:
	li s2,1
endMov: j continueLoop2
	
joyDown:
	j checkD
continueDown:
	la t0,joyPos
	la t1,joyOld
	lw t2,0(t0)
	sw t2,0(t1)		# salva a posicao antiga para poder apagar
	
	lh t1,2(t0)
	addi t1,t1,16
	sh t1,2(t0)	
	
	la t0,disgustMov
	li t1,2
	sh t1,0(t0)
	
	beqz s2,jUR11
	li t0,1
	beq s2,t0,jUR00
	li t0,2
	beq s2,t0,jUL11
	
jUL00:
	li s2,2
	j continueLoop2
	
jUL11:
	li s2,3
	j continueLoop2
	
jUR00:
	li s2,0
	j continueLoop2
	
jUR11:
	li s2,1
	j continueLoop2
		
joyLeft:
	j checkL
continueLeft:
	la t0,joyPos
	la t1,joyOld
	lw t2,0(t0)
	sw t2,0(t1)		# salva a posicao antiga para poder apagar
	
	lh t1,0(t0)
	addi t1,t1,-16
	sh t1,0(t0)
	
	la t0,disgustMov
	li t1,1
	sh t1,0(t0)
	
	li t0,2
	beq s2,t0,jLeft2

jLeft1:
	li s2,2
	j continueLoop2
	
jLeft2:
	li s2,3
	j continueLoop2
	
joyRight:
	j checkR
continueRight:
	la t0,joyPos
	la t1,joyOld
	lw t2,0(t0)
	sw t2,0(t1)		# salva a posicao antiga para poder apagar
	
	lh t1,0(t0)
	addi t1,t1,16
	sh t1,0(t0)
	
	la t0,disgustMov
	li t1,3
	sh t1,0(t0)
	
	beqz s2,jRight2

jRight1:
	li s2,0
	j continueLoop2
	
jRight2:
	li s2,1
	j continueLoop2

checkU:
	beqz s3,collision1U
	la t0,collisionmap2
	j continueU

collision1U: 
	la t0,collisionmap1
continueU:
	la t1,joyPos
	lh t2,0(t1) 		# t2 = X
	lh t3,2(t1)		# t3 = Y
	
	addi t3,t3,-8		# checar em cima do joyPos
	addi t2,t2,7		# checar em cima do joyPos
	li t4,320
	mul t3,t3,t4		# t3 *= 320
	add t2,t2,t3		# t2 = X + 320*Y (PosiÃ§Ã£o do ponto de checagem)
	
	add t2,t2,t0		# endereco mapa + coord
	
	li t3,173		# 173 = cor das paredes
	lbu t4,0(t2)		# carrega a cor do byte na coordenada de t2
	beq t4,t3,endMov
	j continueUp
	
checkD:
	beqz s3,collision1D
	la t0,collisionmap2
	j continueD

collision1D: 
	la t0,collisionmap1
	
continueD:
	la t1,joyPos
	lh t2,0(t1) 		# t2 = X
	lh t3,2(t1)		# t3 = Y
	
	addi t3,t3,24		# checar em baixo do joyPos
	addi t2,t2,7		# checar em cima do joyPos
	li t4,320
	mul t3,t3,t4		# t3 *= 320
	add t2,t2,t3		# t2 = X + 320*Y (PosiÃ§Ã£o do ponto de checagem)
	
	add t2,t2,t0		# endereco mapa + coord
	
	li t3,173		# 173 = cor das paredes
	lbu t4,0(t2)		# carrega a cor do byte na coordenada de t2
	beq t4,t3,endMov
	j continueDown

checkL:
	beqz s3,collision1L 
	la t0,collisionmap2
	j continueL

collision1L: 
	la t0,collisionmap1
	
continueL:
	la t1,joyPos
	lh t2,0(t1) 		# t2 = X
	lh t3,2(t1)		# t3 = Y
	
	addi t2,t2,-8		# checar a esquerda do joyPos
	addi t2,t2,7		# checar em cima do joyPos
	li t4,320
	mul t3,t3,t4		# t3 *= 320
	add t2,t2,t3		# t2 = X + 320*Y (PosiÃ§Ã£o do ponto de checagem)
	
	add t2,t2,t0		# endereco mapa + coord
	
	li t3,173		# 173 = cor das paredes
	lbu t4,0(t2)		# carrega a cor do byte na coordenada de t2
	beq t4,t3,endMov
	j continueLeft

checkR:
	beqz s3,collision1R
	la t0,collisionmap2
	j continueR

collision1R: 
	la t0,collisionmap1
	
continueR:
	la t1,joyPos
	lh t2,0(t1) 		# t2 = X
	lh t3,2(t1)		# t3 = Y
	
	addi t2,t2,24		# checar a direita do joyPos
	addi t2,t2,7		# checar em cima do joyPos
	li t4,320
	mul t3,t3,t4		# t3 *= 320
	add t2,t2,t3		# t2 = X + 320*Y (PosiÃ§Ã£o do ponto de checagem)
	
	add t2,t2,t0		# endereco mapa + coord
	
	li t3,173		# 173 = cor das paredes
	lbu t4,0(t2)		# carrega a cor do byte na coordenada de t2
	beq t4,t3,endMov
	j continueRight	
	
LOSELIFE:
	la t0,angerMov
	sh zero,0(t0)		# define a movimentacao do anger para cima
	
	la t0,lifes
	lh t1,0(t0)
	addi t1,t1,-1		# diminui em 1 a vida
	sh t1,0(t0)
	
	#som morte
	li a2,112 	       	# define o instrumento para notas
        li a3,80       		# define o volume para notas
        li a0,40       		# le o valor da nota
   	li a1,220        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
    	ecall
	
	la a0,joyPos		# reseta as posicoes de todas as emocoes
	la a1,joyOld
	lw t0,0(a0)
	sw t0,0(a1)
	la a0,sadPos
	la a1,sadOld
	lw t0,0(a0)
	sw t0,0(a1)
	la a0,fearPos
	la a1,fearOld
	lw t0,0(a0)
	sw t0,0(a1)
	la a0,angerPos
	la a1,angerOld
	lw t0,0(a0)
	sw t0,0(a1)
	la a0,disgustPos
	la a1,disgustOld
	lw t0,0(a0)
	sw t0,0(a1)

	la a0,joyStart
	la a1,joyPos
	lw t0,0(a0)
	sw t0,0(a1)	
	la a0,sadStart
	la a1,sadPos
	lw t0,0(a0)
	sw t0,0(a1)
	la a0,fearStart
	la a1,fearPos
	lw t0,0(a0)
	sw t0,0(a1)
	la a0,angerStart
	la a1,angerPos
	lw t0,0(a0)
	sw t0,0(a1)
	la a0,disgustStart
	la a1,disgustPos
	lw t0,0(a0)
	sw t0,0(a1)
	ret	
		
closeGame:
	li a7,10		# fecha o jogo
	ecall
	
PRINT:
	#################################
	#     a0 = endereco imagem	#
	#     a1 = x			#
	#     a2 = y			#
	#     a3 = frame (0/1)		#
	#     t0 = endereco bitmap	#
	#     t1 = endereco imagem	#
	#     t2 = contador linha	#
	#     t3 = contador coluna	#
	#     t4 = largura		#
	#     t5 = altura		#
	#################################
	
	li t0,0xFF0 		# carrega o endereco do bitmap
	add t0,t0,a3		# define o frame somando 0 ou 1
	slli t0,t0,20		# adiciona o resto dos 0's
	add t0,t0,a1		# define o endereco da coluna inicial no bitmap
	li t1,320		# usa t1 temporariamente
	mul t1,t1,a2		# define o t1 como a linha inicial
	add t0,t0,t1		# define o endereco da linha inicial no bitmap
	
	addi t1,a0,8		# pula a altura e largura para ir direto para os bytes
	
	li t2,0			# zera os contadores
	li t3,0
	
	lw t4,0(a0)		# carrega a largura e altura da imagem
	lw t5,4(a0)
		
printLine:
	lw t6,0(t1) 		# carrega o endereco da imagem (4 primeiros bytes)
	sw t6,0(t0)		# salva no bitmap
	
	addi t0,t0,4
	addi t1,t1,4
	
	addi t3,t3,4		# adiciona no contador o numero de colunas printadas
	blt t3,t4,printLine	# se cont < tamanho da linha, volta pro loop
	
	addi t0,t0,320		# vai para a proxima linha do comeco
	sub t0,t0,t4
	
	li t3,0			# zera o cont de coluna
	addi t2,t2,1		# cont de linha ++
	bgt t5,t2,printLine	# se cont linha < altura, volta pro loop
	ret
	
GG:
	la a0,ggscreen		# printa a tela de GG
	li a1,0
	li a2,0
	li a3,0
	call PRINT
	
musicGG: 
	la s0,num       	# define o endereço do número de notas
        lw s1,0(s0)     	# le o numero de notas
        la s0,notas     	# define o endereço das notas
        li t0,0         	# zera o contador de notas
        li a2,32        	# define o instrumento para notas
        li a3,127      		# define o volume para notas

musicLoopGG:  
        beq t0,s1,restart     	# se o contador chegou no final, vá para REINICIA
       	call keyboard	
       	
        lw a0,0(s0)        	# le o valor da nota
        lw a1,4(s0)        	# le a duracao da nota
        li a7,31           	# define a chamada de syscall para tocar nota
        ecall              	# toca a nota

        addi a1,a1,-5		# reduzir a pausa pra evitar pausa abrupta nas notas
        mv a0,a1           	# move duracao da nota para a pausa
        li a7,32           	# define a chamada de syscal para pausa
        ecall               	# realiza uma pausa de a0 ms

        addi s0,s0,8     	# incrementa para o endereço da próxima nota
        addi t0,t0,1      	# incrementa o contador de notas

        j musicLoopGG        	# volta ao loop
        
        j closeGame
	
GAMEOVER:
	la a0,gameoverscreen	# printa a tela de GameOver
	li a1,0
	li a2,0
	li a3,0
	call PRINT
loopGO:
	# som gameover
	li a2,107 	       	# define o instrumento para notas
        li a3,40       		# define o volume para notas
        li a0,40       		# le o valor da nota
   	li a1,260        	# le a duracao da nota
    	li a7,31           	# define a chamada de syscall para tocar nota
    	ecall
	call keyboard
	li a0,1100		# faz o programa dar um sleep por 1,1 segundos
	li a7,32
	ecall
	j loopGO
	
	
.data 
.include "data files/maps/menu.data"
.include "data files/hud/ggscreen.data"
.include "data files/hud/gameoverscreen.data"
.include "data files/maps/map1.data"
.include "data files/maps/map2.data"
.include "data files/maps/collisionmap1.data"
.include "data files/maps/collisionmap2.data"
.include "data files/emotions/joyright1.data" 		
.include "data files/emotions/joyright2.data"
.include "data files/emotions/joyleft1.data"
.include "data files/emotions/joyleft2.data"
.include "data files/emotions/joypowerright1.data"
.include "data files/emotions/joypowerright2.data"
.include "data files/emotions/joypowerleft1.data"
.include "data files/emotions/joypowerleft2.data"
.include "data files/emotions/angernormal1.data"
.include "data files/emotions/angernormal2.data"
.include "data files/emotions/angerpower1.data"
.include "data files/emotions/angerpower2.data"
.include "data files/emotions/sadright1.data"
.include "data files/emotions/sadright2.data"
.include "data files/emotions/sadleft1.data"
.include "data files/emotions/sadleft2.data"
.include "data files/emotions/sadpowerright1.data"
.include "data files/emotions/sadpowerright2.data"
.include "data files/emotions/sadpowerleft1.data"
.include "data files/emotions/sadpowerleft2.data"
.include "data files/emotions/fearright1.data"
.include "data files/emotions/fearright2.data"
.include "data files/emotions/fearleft1.data"
.include "data files/emotions/fearleft2.data"
.include "data files/emotions/fearpowerright1.data"
.include "data files/emotions/fearpowerright2.data"
.include "data files/emotions/fearpowerleft1.data"
.include "data files/emotions/fearpowerleft2.data"
.include "data files/emotions/disgustright1.data"
.include "data files/emotions/disgustright2.data"
.include "data files/emotions/disgustleft1.data"
.include "data files/emotions/disgustleft2.data"
.include "data files/emotions/disgustpowerright1.data"
.include "data files/emotions/disgustpowerright2.data"
.include "data files/emotions/disgustpowerleft1.data"
.include "data files/emotions/disgustpowerleft2.data"
.include "data files/hud/tile.data"
.include "data files/hud/pointstile.data"
.include "data files/hud/poweruptile.data"
.include "data files/SYSTEMv21.s"
