# Unidad 5
## Programación Orientada a Objetos
### Investigación
#### Sección 1 - La naturaleza de los objetos en C++
##### Introducción a los Objetos
###### ¿Qué representa la clase Particle?
Esta clase representa la posición y posible movimiento de un(os) elemento(s) dentro del programa, mas no su(s) uso(s).
###### ¿Cómo interactúan sus atributos y métodos?
Estos atributos tienen unos parámetros iniciales (x/y) que no cambian hasta que se hace uso del método de move(mover) 
durante el cual se les añade un valor extra a estos valores iniciales, modificando estos atributos para generar efectos 
diferentes en el objeto al que se le aplique el método.
##### Explorando la memoria
###### ¿Los atributos están almacenados de forma contigua?
Si, ya que estos atributos conforman el objeto, el cual es de 8 bytes en total, sus 2 atributos cada uno ocupa 4 bytes.
###### ¿Qué indica el tamaño del objeto sobre su estructura interna?
El numero de atributos y el tipo de variable que sean estos es lo que define el espacio que ocupan.
##### Análisis de diferencias
###### ¿Cómo afectan los datos estáticos al tamaño de la instancia?
Los datos estáticos quedan almacenados en la memoria de forma permanente durante la ejecución del 
programa, lo cual tiene sus usos pero tiene el costo de memoria atado a esos beneficios.
###### ¿Qué diferencias hay entre datos estáticos y dinámicos en términos de memoria?
Los datos estáticos ocupan un espacio permanente dentro del programa pero siempre existen por fuera de las clases y los métodos 
permitiendo su uso en cualquier parte del programa, mientras que los datos dinámicos se guardan dentro del heap, logrando un poco 
de esa misma "flexibilidad" de uso de los datos estáticos con unas diferencias, principalmente en que al tener un formato de estructura de datos, 
es necesario que el programador se asegure de eliminar estos elementos al final de su utilidad, con tal de que no ocupen 
espacios de memoria o creen fugas de la misma, en especial porque estos tienden a tener espacios reservados del 
tamaño de la estructura de datos correspondiente.
##### Reflexión
###### ¿Qué es un objeto desde la perspectiva de la memoria?
Un objeto es algo que combina parámetros y métodos dentro de una misma clase, pero que no ocupa memoria por si mismo, 
la memoria es ocupada por el instanciamiento del objeto en sus diferentes versiones.
###### ¿Cómo influyen los atributos y métodos en el tamaño y estructura del objeto?
Cada atributo y método asociado a una instancia del objeto añade un par de bytes al espacio ocupado por el mismo.
###### Conclusión: resumir los hallazgos y cómo esto impacta el diseño de clases.
#### Sección 2 - Ubicación en memoria de datos y métodos
##### Análisis de la estructura de una clase
###### ¿Dónde se almacenan los datos y métodos de una clase en C++ en la memoria? Explica el concepto de vtable y cómo se relaciona con los métodos virtuales.
##### Exploración de métodos virtuales
###### ¿Qué papel juegan las vtables en el polimorfismo?
Son la estructura que permite usar diferentes valores de atributos a partir de objetos predefinidos con variaciones especificas.
