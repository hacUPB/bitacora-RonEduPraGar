# Unidad 3
## Lenguaje de Alto Nivel
### Actividad 1
#### �Cu�l es el resultado que se obtiene al ejecutar este programa?
Al ejecutar el programa, se puede observar un circulo blanco que sigue al cursor del raton, dentro de la ventana generada.
### Actividad 2
#### �Qu� fue lo que incluimos en el archivo .h?
En el archivo .h creamos las funciones a usar dentro del programa,  
estas se definen dentro del archivo .cpp
#### �C�mo funciona la aplicaci�n?
Esta aplicacion genera una ventana donde constantemente detecta el cursor del 
mouse en terminos de su posicion (coordenadas/movimiento) y estado (presionado/en reposo),  
en la posicion del mouse dibuja circulos o particulas que persisten hasta que llegan a una longitud o numero de particulas especifica antes de desaparecer,  
estos circulos pueden cambiarse de color en el momento que detecta un cambio de estado en el raton (de reposo a presionado), es un cambio instantaneo a un color aleatorio.
#### �Qu� hace la funci�n mouseMoved?
Esta funcion es la que maneja el proceso de dibujado con base en el raton, define la posicion en la que se dibuja y es la que verifica donde se dibuja,  
asi como es la que define el limite de particulas antes de empezar a borrarlas desde la mas antigua.
#### �Qu� hace la funci�n mousePressed?
Esta funcion registra el cambio de estado del raton (presionado) y cambia el color de las particulas.
#### �Qu� hace la funci�n setup?
Esta funcion configura la ventana o el canvas donde se ejecuta el programa, tambien es donde se define el color base de la ventana y de las particulas.
#### �Qu� hace la funci�n update?
Esta funcion es la que maneja los procesos constantes dentro del programa, todo lo que requiera constantes actualizaciones toma ventaja de esto.
#### �Qu� hace la funci�n draw?
Esta funcion es la que se encarga de definir la apariencia y forma de las particulas.  
### Actividad 3
Se modifico el radio de la particula (circulo) para que fuera aleatorio entre 40 y 80 (dejarlo sin limite o con un limite inferior menor puede generar una imagen dificil de ver sin dolor de ojos o peor)
tambien se redujo la cantidad de particulas antes de que desaparezcan.
### Actividad 5
#### �Cu�l es la definici�n de un puntero?
#### �D�nde est� el puntero?
#### �C�mo se inicializa el puntero?
#### �Para qu� se est� usando el puntero?
#### �Qu� es exactamente lo que est� almacenado en el puntero?
### Actividad 6
El programa tenia el problema de no poder seleccionar otras esferas en el momento que elijes una, solo es capaz de interactuar con esa y no permite ni deseleccionar ese circulo o seleccionar otros circulos con un circulo seleccionado.
