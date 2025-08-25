# Unidad 3
## Lenguaje de Alto Nivel
### Actividad 1
#### ¿Cuál es el resultado que se obtiene al ejecutar este programa?
Al ejecutar el programa, se puede observar un circulo blanco que sigue al cursor del raton, dentro de la ventana generada.
### Actividad 2
#### ¿Qué fue lo que incluimos en el archivo .h?
En el archivo .h creamos las funciones a usar dentro del programa,  
estas se definen dentro del archivo .cpp
#### ¿Cómo funciona la aplicación?
Esta aplicacion genera una ventana donde constantemente detecta el cursor del 
mouse en terminos de su posicion (coordenadas/movimiento) y estado (presionado/en reposo),  
en la posicion del mouse dibuja circulos o particulas que persisten hasta que llegan a una longitud o numero de particulas especifica antes de desaparecer,  
estos circulos pueden cambiarse de color en el momento que detecta un cambio de estado en el raton (de reposo a presionado), es un cambio instantaneo a un color aleatorio.
#### ¿Qué hace la función mouseMoved?
Esta funcion es la que maneja el proceso de dibujado con base en el raton, define la posicion en la que se dibuja y es la que verifica donde se dibuja,  
asi como es la que define el limite de particulas antes de empezar a borrarlas desde la mas antigua.
#### ¿Qué hace la función mousePressed?
Esta funcion registra el cambio de estado del raton (presionado) y cambia el color de las particulas.
#### ¿Qué hace la función setup?
Esta funcion configura la ventana o el canvas donde se ejecuta el programa, tambien es donde se define el color base de la ventana y de las particulas.
#### ¿Qué hace la función update?
Esta funcion es la que maneja los procesos constantes dentro del programa, todo lo que requiera constantes actualizaciones toma ventaja de esto.
#### ¿Qué hace la función draw?
Esta funcion es la que se encarga de definir la apariencia y forma de las particulas.  
### Actividad 3
Se modifico el radio de la particula (circulo) para que fuera aleatorio entre 40 y 80 (dejarlo sin limite o con un limite inferior menor puede generar una imagen dificil de ver sin dolor de ojos o peor)
tambien se redujo la cantidad de particulas antes de que desaparezcan.
### Actividad 5
#### ¿Cuál es la definición de un puntero?
#### ¿Dónde está el puntero?
#### ¿Cómo se inicializa el puntero?
#### ¿Para qué se está usando el puntero?
#### ¿Qué es exactamente lo que está almacenado en el puntero?
### Actividad 6
El programa tenia el problema de no poder seleccionar otras esferas en el momento que elijes una, solo es capaz de interactuar con esa y no permite ni deseleccionar ese circulo o seleccionar otros circulos con un circulo seleccionado.
