# RETO
## Idea Inicial
La idea inicial seria generar un programa 3D en el cual se crean 2 esferas en diferentes posiciones,  
estas esferas estan asociadas a 2 tipos de estructuras de datos diferentes (LIFO y FIFO), al presionar 1 tecla ("a" para LIFO, "w" para FIFO)  
estas añaden mas esferas a sus respectivas lineas, las cuales estan en movimiento en ondas, al presionar otra tecla ("r" para LIFO, "e" para FIFO)  
estos empiezan a eliminar elementos con base en su estructura de datos.  
La posicion de estas esferas es directamente opuesta la una de la otra, pero haciendo uso de unos sets de teclas (1-4, 6-9) es posible cambiar el numero de lineas visibles en la circunferencia de un circulo.  
Las lineas asociadas al queue empiezan a borrar esferas del centro hacia afuera.  
Las lineas asociadas al stack empiezan a borrar esferas de afuera hacia el centro.  

## Cambios en la Idea durante el Proceso
A lo largo de la construccion del codigo se fue pidiendo lentamente a la IA (ChatGPT) que creara un projecto desde 0 con tal de entender y poder corregir las faltas directas que tuvieran las diferentes variaciones del posible proyecto, este proceso se llevo a cabo a lo largo de 8 horas de prueba y error, sin incluir correcciones directas o intentos de retorno a soluciones anteriores mas relevantes a la idea del proyecto.
(Trabajar con IA es mas dolor de cabeza de lo que pense que podria ser al inicio...)
En los primeros intentos se buscó la creacion de una estructura por nodos que permitiera eliminar y agregar nodos a todas las lineas de forma simultanea sin afectar la forma de la estructura ni generar cambios inesperados (ambas cosas que procederan a suceder mucho mas a menudo entre mas se intenta avanzar por medio de este metodo)
