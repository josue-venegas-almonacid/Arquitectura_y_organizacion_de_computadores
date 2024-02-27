@ENUNCIADO 2: BUSQUEDA SECUENCIAL EN UN ARREGLO
@Instrucciones:
@------Para buscar un numero en un arreglo determinado:
@---------'size': tamano del arreglo
@---------'array': arreglo de numeros, separados por coma
@---------'number': numero a buscar en el arreglo
@------El resultado de la busqueda sera registrado en R5 y en 'resultado',
@------donde 0: encontrado y 1: no encontrado.
@------No olvide agregar 'resultado' a WatchView con formato decimal para 
@------poder comprobarlo.

.data
size: .word 5
array: .word 1, 3, 5, 23, 30
number: .word 23
resultado: .word 1

.global main

main:
	ldr r0, =size
	ldr r1, [r0]	@r1 = size
	ldr r2, =array
	ldr r0, =number
	ldr r3, [r0]	@r3 = number

	loop:
		cmp r1, #0	@if size = 0
		moveq r5, #1
		beq exit	@return False

		ldr r4, [r2], #4	@r4 = elemento del array
		cmp r4, r3	@if r4 == number
		moveq r5, #0
		beq exit	@return True

		sub r1, #1	@r1 = r1-1
		b loop

exit:
	ldr r0, =resultado
	str r5, [r0]	@resultado = 0/1
	.end
