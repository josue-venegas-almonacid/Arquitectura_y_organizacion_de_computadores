@ENUNCIADO 1: NUMERO DE LUCAS
@Instrucciones:
@------Para obtener el n-esimo elemento, cambie 'enesimo' al numero deseado.
@------El n-esimo numero solicitado sera registrado en R5 y en 'resultado'.
@------No olvide agregar 'resultado' a WatchView con formato decimal para 
@------poder comprobarlo.

.data
enesimo: .word 23
resultado: .word 0

.global main
main:

	ldr r0, =enesimo
	ldr r1, [r0]	@r1 = enesimo

	@Casos base
	cmp r1, #0	@if r1 <= 0
	movle r5, #2	@return 2
	ble exit

	cmp r1, #1	@if r1 = 1
	moveq r5, #1	@return 1
	beq exit

	@Serie de Lucas
	mov r2, #2	@r2 = 2
	mov r3, #1	@r3 = 1

	loop:
		cmp r1, #1	@if contador = 1
		beq exit	@break

		add r5, r2, r3	@r5 = r2+r3
		mov r2, r3	@r2 = r3
		mov r3, r5	@r3 = r5


		sub r1, #1	@r1 = r1-1
		b loop

exit:
	ldr r0, =resultado
	str r5, [r0]	@resultado = r5
	.end