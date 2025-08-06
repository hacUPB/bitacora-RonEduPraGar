# Sistemas Computacionales Experiencia de Aprendizaje 1  
  
## Actividades  
  
### Actividad 1  
#### - ¿Qué es la entrada-salida mapeada a memoria?  
Es el sistema por el cual es posible registrar y obtener informacion hacia y desde la CPU, por medio de bucles constantes, es posible obtener un dato desde el teclado o cambiar los pixeles mostrados en pantalla.  
  
#### - ¿Cómo se implementa en la plataforma Hack?  
Por medio de los espacios de memoria asignados directamente a estos identificadores, el de KBD(Teclado [24576]) y el de SCREEN (Pantalla [16384]).  
En el teclado, cada vez que se presiona una tecla esta representa un codigo ASCII el cual se encuentra dentro de la memoria de esta posicion, usando este dato es posible ejecutar acciones por medio de la comparacion a los valores asociados a cada elemento digitable.
En cuanto a la pantalla esta representa sus elementos visibles dependiendo de si el valor en la memoria tiene valor (1 = pixel negro) o es neutro (0 = blanco), aun que sea monocromatico permite construir imagenes de tamaño considerable (256X512).

#### - Inventar y estudiar funcionamiento de un programa que haga uso de este sistema. 
Es interesante ver como el programa maneja los diferentes posibles elementos obtenidos del input por teclado y como esto permite asociar tareas diferentes incluso dentro de un mismo boton fisico gracias a los diferentes simbolos y metodos de escritura con los que vienen equipados los teclados, tambien el como se reorganiza en la escritura de los pixeles dentro de la pantalla el codigo, cosa observable con el editor de bitmap incluido en NAND2TETRIS, ver como ciertas filas tienen diferentes bits asociados permitiendo que solo cambiar la direccion de memoria genere imagenes diferentes es menos tedioso y limitante de lo que pensaba, aunque no parece muy intuitivo a primera vista.   
  
  
## Retos  
  
### Reto 1  
En este reto se hace uso de i como indicador de los ciclos o el numero de ciclos que lleva funcionando la operacion, asi podemos calcular exactamente el numero paso a paso, existen otros metodos por los cuales es posible comprobar que da 5050 que son menos complejos pero que no se pueden ejecutar directamente en este nivel de programacion, esta forma (un bucle que repite la operacion) permite ejecutarlo incluso en el nivel mas basico posible.  
i (RAM 16) toma el valor al cual se quiere llegar para evitar tener que comparar al final del proceso para generar el salto que finaliza el bucle, mientras que el proceso de sumatoria (RAM 17) esta directamente inscrito dentro del bucle al lado de la operacion que reduce a la variable i cada ciclo. Con base en el programa que nos proveen, la forma correcta seria por medio de sumatoria en la variable i, pero el proceso de comparacion añade al menos otras 3 lineas y si se hace con el salto a "mayor que" en vez de a "mayor o igual que" se evita un ultimo ciclo, innecesario debido a que sumar por 0 no afectaria nuestro resultado (5050).  
  
### Reto 2  
int sum = 0;
For (i == 0; i <= 100; i++){
   sum += i;
}  
  
### Reto 3  
  

### Reto 4  
  

### Reto 5

  
### Reto 6  

  
### Reto 7  
  

### Reto 8  
  

### Reto 9  
  