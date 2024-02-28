# Tarea 3

## Herramientas necesarias

Se ha comprobado el correcto funcionamiento del proyecto con las siguientes versiones:
- ArmSim# 2.1

## Uso

1. Ejecute el software ArmSim#
2. Vaya a la pestaña "File" y seleccione la opción "Load"
3. Seleccione el programa que desea ejecutar y realice las operaciones según corresponda

## Descripción

Para esta tarea se solicitó la creación de distintos programas en ARM Assembly, encargados de:
- Dada una entrada entera n entre [0, 2^8], determinar el n-ésimo número de la serie de Lucas
- Encontrar un número en un conjunto de n valores ordenados. La entrada consiste de un entero n, que define el largo del conjunto, seguido de n enteros ordenados y un último entero K, que será el elemento que buscaremos en en el conjunto. En caso de que el elemento buscado no se encuentre dentro del conjunto debe entregar un mensaje correspondiente.

### Número de Lucas

De manera similar a los números de Fibonacci, cada número de Lucas se define como la suma de sus dos inmediatos anteriores, formando así una secuencia de enteros. Los dos primeros números de Lucas son L0 = 2 y L1 = 1.

Para obtener el n-ésimo elemento, cambie el valor de 'enesimo' al numero deseado. (ej: `enesimo: .word 20` para obtener el vigésimo elemento)

Luego de ejecutar el programa, el n-ésimo número solicitado será registrado en los slots `R5` y en `resultado`. No olvide agregar `resultado` a WatchView con formato decimal para poder comprobarlo.

### Búsqueda de un valor

Para buscar un numero en un arreglo determinado, cambie los valores siguientes:
- `size`: tamaño del arreglo
- `array`: arreglo de números, separados por coma
- `number`: número a buscar en el arreglo

Luego de ejecutar el programa, el resultado de la búsqueda será registrado en los slots `R5` y en `resultado`, donde 0 significa que el valor fue encontrado y 1 que el valor no fue encontrado. No olvide agregar `resultado` a WatchView con formato decimal para poder comprobarlo.
