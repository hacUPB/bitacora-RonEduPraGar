# Actividad 4
## Estructuras de Datos
### Investigacion
#### Actividad 1
##### 3. ¿Qué es una lista enlazada y en qué se diferencia de un arreglo en cuanto a la forma en que los elementos están almacenados en la memoria?
Una lista enlazada hace uso de nodos
estructura consecutiva, uso de nodos para identificar objeto siguiente en lista consecutiva, en un arreglo, esta posición se guarda de forma aleatoria en su creación.
lista es en HEAP(almacenado), arreglo en STACK(temporal).
##### 4. Al observar el código de una lista enlazada en C++, ¿Cómo crees que se vinculan los nodos entre sí? ¿Qué estructura se utiliza para lograr esta conexión?
Los nodos se vinculan haciendo uso de punteros de su propia clase para apuntar directamente a si mismos hasta que se llegue al identificador de nodo/punto inicial/final
##### 5. Cómo se gestiona la memoria en una lista enlazada? Investiga cómo se crea y se destruye un nodo en memoria utilizando el operador new y delete en C++.

##### 6. Considerando la estructura de una lista enlazada, ¿qué ventajas ofrece en comparación con un arreglo cuando se trata de insertar o eliminar elementos en posiciones intermedias?
Da la capacidad de navegacion exacta por cada elemento de la lista sin requerir procesos extremos o pesados de lectura por medio del puntero, ya que estos siempre estan organizados de tal manera que por medio de reasociacion de las etiquetas de next y current sea posible sacar y destruir un elemento de la lista o ingresar uno sin romper el sistema ya establecido o generar problemas con base en el tamaño estricto de los arreglos, los cuales tambien requieren mover todos los elementos para poder insertar un elemento intermedio o la creacion de nuevas listas a las cuales reingresar los elementos en caso de requerir un cambio de tamaño.
##### 7. En el código presentado, ¿Cómo se asegura que no haya fugas de memoria? ¿Qué papel juega el destructor en la clase LinkedList?
Se asegura que no se generen fallas de memoria por medio del uso de los destructores, los cuales estan atados a las funciones del mismo nombre sin la tilde(virgulilla?) y tienen la funcion establecida de asegurar la destruccion del elemento asociado despues de que terminen su uso, liberando el espacio de memoria que ocupa.  
En el caso del LinkedList, no permite que los elementos sobrantes de las listas queden despues de que estas dejen de tener elementos o nodos asociados a ellas, ademas de que asegura que la representacion grafica de estos nodos no quede en pantalla.
##### 8. ¿Qué sucede en la memoria cuando se invoca el método clear() en una lista enlazada? Explica paso a paso cómo se liberan los recursos.
Al invocar el metodo, 
##### 9. Explica cómo cambia la estructura en memoria de una lista enlazada al agregar un nuevo nodo al final de la lista. ¿Cómo afecta esto al rendimiento de la lista enlazada?

##### 10. Analiza una situación en la que utilizar una lista enlazada sería más ventajoso que utilizar un arreglo. Justifica tu respuesta considerando la gestión de memoria y las operaciones de inserción y eliminación.
La situacion mas basica en la que una lista enlazada pueda ser mas util que un arreglo, es cuando se requiere utilizar un espacio de tamaño flexible, donde todos los elementos son de acceso contiguo, al ser necesario poder hacer cambios intermedios dentro de la estructura sin tener conocimiento de un limite mayor sobre la cantidad de elementos, crear nuevos arreglos cada vez que se requiera ingresar mas datos es mucho menos eficiente y mas complejo que hacer el manejo de estos elementos por una lista de nodos.
##### 11. Después de estudiar el manejo de memoria en listas enlazadas, ¿Cómo aplicarías este conocimiento para diseñar una estructura de datos personalizada para una aplicación creativa? ¿Qué aspectos considerarías para asegurar la eficiencia y evitar fugas de memoria?

##### 12. Reflexiona sobre las diferencias en la gestión de memoria entre C++ y un lenguaje con recolección de basura automática como C#. ¿Qué ventajas y desafíos encuentras en la gestión explícita de memoria en C++ al trabajar con estructuras de datos?
Como ventaja, el control sobre los elementos utilizados en la aplicacion y los momentos y acciones en que son manejados, pero generando el desafio de evitar fugas de memoria que causen mas problemas y desvien la atencion de problemas mas criticos dentro del programa, tambien el tener que estar pendiente de que el proceso se lleve a cabo correctamente puede desviar recursos y tiempo que se pueda dedicar a otros aspectos del programa.
##### 13. Imagina que estás optimizando una pieza de arte generativo que usa listas enlazadas para representar elementos en movimiento. ¿Qué consideraciones tomarías en cuenta para garantizar que la gestión de la memoria sea eficiente y que no ocurran fugas de memoria?
Limitar el numero de elementos por lista, ejecutar la destruccion de todo nodo y lista que deje de usarse o no sea visible. De ser posible, usar sistemas o estructuras conocidas/establecidas que permitan reducir el numero de errores posibles durante la creacion del programa.
#### Actividad 2 (reflexion: stack)
##### 1. ¿Cómo se gestiona la memoria en una implementación manual de un stack en C++? Reflexiona sobre cómo el uso de new y delete en la creación y destrucción de nodos afecta el rendimiento y la seguridad de tu programa.
##### 2. ¿Por qué es importante liberar la memoria cuando se desapila un nodo en un stack? Considera las consecuencias de no liberar memoria en términos de fugas de memoria y cómo esto puede impactar aplicaciones de largo tiempo de ejecución.
Porque estos espacios quedan como fantasmas en cuanto a que no tienen presencia o se les da un uso, pero siguen ocupando un espacio significativo en el proceso, cosa que si sigue pasando puede llevar a una perdida total de la memoria RAM y en el proceso a la perdida de su velocidad de procesamiento debido a que no hay espacio suficiente para llevar acabo las operaciones y procesos que en cualquier otra circunstancia no tendrian problema alguno.
##### 3. ¿Qué diferencias existen entre usar un stack de la STL (std::stack) y crear un stack manualmente? Explora cómo la abstracción que proporciona la STL puede simplificar la implementación, pero también cómo una implementación manual ofrece mayor control sobre la gestión de recursos.
##### 4. ¿Cómo afecta la estructura de un stack al orden de acceso y eliminación de elementos? Analiza cómo la naturaleza LIFO (Last In, First Out) del stack influye en los tipos de problemas que esta estructura de datos puede resolver eficientemente.
##### 5. ¿Cómo podrías modificar el stack para almacenar tipos de datos más complejos (e.g., objetos con múltiples atributos) sin causar problemas de memoria? Reflexiona sobre cómo gestionar adecuadamente la memoria para objetos más complejos y cómo esto afectaría tu implementación actual.
#### Actividad 2 (auto-evaluacion: stack)
##### 1. ¿Puedo explicar detalladamente cómo funciona el proceso de apilar y desapilar nodos en un stack, incluyendo la gestión de memoria?
##### 2. ¿Soy capaz de identificar y corregir una fuga de memoria en una implementación de stack manual?
##### 3. ¿Puedo modificar el stack para que incluya una función que busque un elemento específico, sin alterar el orden de los elementos apilados?
##### 4. ¿Entiendo cómo la estructura LIFO del stack afecta el flujo de datos y puedo dar ejemplos de problemas que se resuelvan mejor con un stack?
##### 5. ¿Puedo implementar y depurar un stack para tipos de datos más complejos, asegurándome de que no haya fugas de memoria ni errores de puntero?
#### Actividad 2 (reflexion: queue)
##### 1. ¿Cómo se maneja la memoria en una implementación manual de una queue en C++? Reflexiona sobre cómo se gestionan los nodos al encolar y desencolar elementos y las implicaciones en términos de eficiencia y seguridad.
##### 2. ¿Qué desafíos específicos presenta la implementación de una queue en comparación con un stack en términos de gestión de memoria? Considera las diferencias en el manejo de punteros front y rear, y cómo estos afectan el proceso de encolado y desencolado.
En el caso de los queues estos pueden considerarse limitados en el manejo de su memoria, esto debido a que tienen un espacio limitado asignado, que no son de acceso facil a elementos intermedios (requiriendo sacar elementos hasta encontrar el buscado, tomando tiempo y recursos extra, ya sea solo para busqueda o para modificacion de estos), esto encima de requerir punteros que definan los elementos importantes (entrada y salida) y el estado de los demas elementos, cosa que tambien requiere sus propios recursos, a menos de que no exista mejor forma de manejar  un ciertos grupos de datos es un proceso costoso para el programa.
##### 3. ¿Cómo afecta la estructura FIFO (First In, First Out) de una queue a su uso en diferentes tipos de problemas? Analiza cómo la estructura FIFO influye en la resolución de problemas donde el orden de procesamiento es crucial, como en sistemas de colas de espera.
Esta estructura tiene su beneficio en una implementacion facil de hacer, que permite el manejo eficiente y ordenado de grandes cantidades de datos, a la vez que puede procesar datos a la par de otras estructuras o procesos dentro del programa permitiendo simplificar aspectos de este o incluso otras estructuras de datos.
Si se requiere el entendimiento de cada elemento en orden dentro de una gran cantidad de datos, este sistema puede ser el ideal en conjunto con otros sistemas que hagan uso de la informacion pero que no puedan manejar la parte de organizacion por si mismos.
##### 4. ¿Cómo podrías implementar una queue circular y cuál sería su ventaja respecto a una queue lineal en términos de uso de memoria? Reflexiona sobre cómo una queue circular puede mejorar la eficiencia en ciertos contextos y qué cambios serían necesarios en la implementación.
##### 5. ¿Qué problemas podrían surgir si no se gestionan correctamente los punteros front y rear en una queue, y cómo podrías evitarlos? Considera posibles errores como la pérdida de referencias a nodos y cómo una gestión cuidadosa de los punteros puede prevenir estos problemas.
Aparte de causar sobrecargas o perdidas de datos dentro de la lista, este sistema siempre tiene que mantener punteros en lks elementos para que estos no se pierdan despues y antes de que pasen por la posicion de entrada y salida del queue, si estos no se configuran bien tambien pueden existir problemas con la liberacion de elementos del queue o en añadir y remover elementos intermedios en caso de ser necesario.
#### Actividad 2 (auto-evaluacion: queue)
##### 1. ¿Puedo explicar claramente el proceso de encolar y desencolar nodos en una queue, incluyendo la gestión de memoria?
##### 2. ¿Soy capaz de identificar y corregir problemas relacionados con la gestión de los punteros front y rear en una queue?
##### 3. ¿Puedo modificar la queue para implementar una queue circular, entendiendo cómo esto afectaría la gestión de memoria?
##### 4. ¿Entiendo cómo la estructura FIFO de una queue afecta el flujo de datos y puedo dar ejemplos de problemas que se resuelvan mejor con una queue?
##### 5. ¿Puedo implementar y depurar una queue para tipos de datos más complejos, asegurándome de que no haya fugas de memoria ni errores de puntero?
### Reto
