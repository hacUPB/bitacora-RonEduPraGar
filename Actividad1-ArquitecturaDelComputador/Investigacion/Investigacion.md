# Sistemas Computacionales Experiencia de Aprendizaje 1  
  
## Actividades  
  
### Actividad 1  
#### - Qué es un computador digital moderno?  
Los computadores digitales modernos se basan en la arquitectura base de von Neumann la cual se conforma principalmente de una CPU, la cual interactua con la memoria del dispositivo y que recibe y envia datos por medio de sistemas o dispositivos dedicados a estas tareas. Estos computadores funcionan a partir del concepto del programa guardado, donde la memoria guarda los datos y las instrucciones del funcionamiento del computador.  
#### - ¿Cuáles son sus partes?  
Un computador se compone de CPU, RAM, ROM Y sus perifericos (input/output) en su construccion basica final.  
### Actividad 2  
#### - ¿Qué es entonces un programa?  
  
#### - ¿Qué es un lenguaje ensamblador?  
Tipo de lenguaje que trabaja en base al entendimiento mas directo posible del codigo binario  
#### - ¿Qué es lenguaje de máquina?  
Tipo de lenguaje  

### Actividad 3  
#### - ¿Qué son PC, D y A?  
PC se refiere a la posicion activa del ROM en la CPU, D es la memoria temporal con la cual es posible manejar los datos y A es la referencia del espacio actual dentro de la ROM como dato accesible.  
#### - ¿Para qué los usa la CPU?  
La Unidad Central de Procesamiento es lo que describe su nombre, esta es la que acarrea los procesos mas importantes y basicos de un computador, siendo la que recibe las instrucciones en su lenguaje mas primitivo desde la memoria, haciendo el proceso repetitivo de leer, decodificar y ejecutar estas instrucciones en bucle, a la vez que busca la siguiente a ejecutar.  
  
### Actividad 4  
  
  
## Retos  
  
### Retos 1-4  
Estos retos permiten familiarizarse con el proceso de escritura y verificación del código permitiendo  identificar los roles de cada elemento utilizado sin crear confusión por medio de procesos mas complicados.  
  
### Reto 5
Ya con la idea de como funcionan los elementos es posible pasar a entender la estructura de los programas y  el rígido ciclo que hay que seguir para poder integrar los valores de diferentes espacios de la RAM (M) en  una suma en otro espacio, proceso relativamente tedioso debido a que no es posible digitar directamente los  valores mayores a los binarios (0/1) dentro de la memoria, extendiendo el proceso en caso de no trabajar los   valores base (0, que en otras palabras no permitiría comprobar el programa directamente) o con un valor de 1  en las memorias, que acorta el proceso, pero no es el mejor expositor del funcionamiento del programa.  
  
### Reto 6  
Introducción básica al funcionamiento de los saltos por comparación iniciando con el de equivalencia entre D  (Memoria Temporal o la Variable) y 0, todas las comparaciones son hechas con base a 0 en este sistema.
  
### Reto 7  
Se asigna un valor arbitrario de 79 para trabajar por debajo del 100 pedido, luego se aplica el valor a la posición 100 y se le resta a la D el valor de A(posición), con esto, durante la comparación el valor de D esta por debajo de 0 (es -21) y activa el salto a la posición 20, donde se registra el valor de D para verificación debido a que no se muestra correctamente dentro del registro del editor usado.
  
### Reto 8  
#### - ¿Qué hace este programa?  
Este programa registra el dato almacenado dentro de la RAM en un espacio determinado, y usa esta informacion almacenada de forma temporal para sumarla a el valor dentro de otro espacio sin almacenarla dentro de esta memoria, luego la introduce en la memoria de otro espacio.   
#### - En qué posición de la memoria está `var1`, `var2` y `var3`? ¿Por qué en esas posiciones?  
Estas posiciones se ubican directamente despues de los bits esenciales (0-15) de la memoria, significando que apuntan al 16, 17 y 18 respectivamente. El programa seria funcional en la forma del ejemplo, pero se requiere asignar algun valor a la memoria de esas posiciones para comprobar su correcto funcionamiento.

### Reto 9  
#### - ¿Qué hace este programa?  
Este programa tiene el funcionamiento de sumar el valor de la primera posicion posible a si mismo registrando el valor original en el espacio donde se ejecuta la suma y el nuevo valor en el espacio inicial.  
#### - ¿En qué parte de la memoria RAM está la variable `i` y `sum`? ¿Por qué en esas posiciones?  
Se encuentran en los primeros espacios disponibles (16 y 17) en el sistema de 16 bits que se trabaja.  
Se puede optimizar cambiando el destino de la suma de la memoria temporal (D) al referente de la RAM (M).  
  
### Reto 10  
Este reto es util en cuanto a que permite identificar la referencia correcta para los espacios iniciales de la ROM a la vez que implica su importancia con su nombramiento especifico en comparacion del resto de los bits.  
  
### Reto 11  
#### - ¿Qué hace este programa?  
Crea un bucle que cuenta desde 1000 hasta 0, donde al hacer la ultima comparacion con 0 rompe el bucle y sigue en su ejecucion normal (no hay comando de finalizacion).  
#### - ¿En qué memoria está almacenada la variable i? ¿En qué dirección de esa memoria?  
Se almacena desde la primera posicion posible (16), esto sucede en la posicion 4 de la ROM dentro del simulador, dentro del codigo, es la posicion 8 debido a los comentarios y las etiquetas. 
#### - ¿En qué memoria y en qué dirección de memoria está almacenado el comentario //`i = 1000?`  
El comentario no se almacena dentro de la ROM, estos son esencialmente invisibles a las memorias.  
#### - ¿Cuál es la primera instrucción del programa anterior? ¿En qué memoria y en qué dirección de memoria está almacenada esa instrucción?  
Su primera instruccion es el registro del dato de posicion (A) a la memoria temporal (D), esta instruccion sucede en la posicion 2 en el simulador, o la posicion 3 dentro del codigo.  
#### - ¿Qué son CONT y LOOP?  
Son etiquetas con el proposito de guiar dentro del codigo la intencion de las acciones que se lleven a cabo, ya que estas no son siempre claras y podrian causar confusion en sus proximas revisiones, ya sean estas hechas por la misma persona.  
#### - ¿Cuál es la diferencia entre los símbolos `i` y `CONT`?  
Desde su mencion son asignados a espacios diferentes de memoria, definiendo esencialmente lo que conocemos como variables y permitiendo ir a esos espacios con esos simbolos dentro del codigo.  
  
### Reto 12  
Uso basico de las referencias a los espacios iniciales para sumar valores 2 veces a un espacio especifico.  
### Reto 13  
  
### Reto 14  
  
### Reto 15  
  
### Reto 16  
  
### Reto 17  
   
### Reto 18  
  
### Reto 19 
   
### Reto 20  