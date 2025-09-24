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
##### Uso de Punteros y Referencias
###### Observar si el tamaño de la instancia cambia al usar punteros a funciones.
###### Verificar cómo se almacenan estos punteros.
##### Reflexión
###### ¿Cuál es la relación entre los punteros a métodos y la vtable?
###### ¿Cómo afectan estos mecanismos al rendimiento del programa?
###### ¿Dónde residen los datos y métodos de una clase en la memoria?
###### ¿Cómo interactúan las diferentes partes en tiempo de ejecución?
###### Conclusión: cómo esta comprensión afecta el diseño de sistemas.
#### Sección 3 - Implementación Interna de Encapsulamiento, Herencia y Polimorfismo
##### Profundizando en el encapsulamiento
###### ¿Qué es el encapsulamiento y cuál es su propósito en la programación orientada a objetos?
###### ¿Por qué es importante proteger los datos de una clase y restringir el acceso desde fuera de la misma?
###### ¿Qué significa reinterpret_cast y cómo afecta la seguridad del programa?
###### ¿Por qué crees que se pudo acceder a los miembros privados de MyClass en este experimento, a pesar de que el compilador normalmente lo impediría?
###### ¿Cuáles podrían ser las consecuencias de utilizar técnicas como las mostradas en este experimento en un programa real?
###### ¿Qué implicaciones tiene este experimento sobre la confianza en las barreras de encapsulamiento que proporciona C++?
##### Herencia y la Relación en Memoria
###### Layout de memoria: ¿Cómo los objetos derivados contienen los datos de las clases base?
###### ¿Cómo se organizan los atributos en memoria?
###### ¿Qué sucede si agregamos más niveles de herencia?
##### Polimorfismo y Vtables en detalle
###### ¿Cómo utiliza el programa las vtables para el polimorfismo?
###### ¿Cuál es el impacto en el rendimiento?
###### ¿Cómo se implementan internamente el encapsulamiento, la herencia y el polimorfismo?
###### Análisis: ventajas y desventajas en términos de eficiencia y complejidad.
### Reto
La idea inicial del reto se basa en un projecto en el cual 2 sets de nodos triangulares los cuales se mueven de forma exponencial por la pantalla, 
lo que pueda significar, realmente es una prueba de ver como interpreta este concepto ChatGPT.
La idea un poco mas posible de entender es que se muevan a forma de un cierre ya sea que inicie en una linea conjunta cerrada en el centro
y se abra hacia los bordes en un movimiento circular, o que esten separadas las curvas y converjan en la mitad de la pantalla.
Esta idea esta aun abierta a desarrollar mas dependiendo de como quede el codigo, y mas especificamente, de que ChatGPT 
no le pierda el hilo a lo que este creando en el proceso, terminando con algo completamente diferente (como en la anterior entrega despues del intento final 3).  


    
El primer intento de ver el posible programa creado por esta maravilla llevo a varios errores desconocidos y archivos que no funcionaban, asi que se pasa a un 2do intento.
Se vuelve a usar la pregunta inicial dentro de la Unidad "¿Puedes ayudarme a diseñar un proyecto de arte generativo en C++ utilizando openFrameworks que utilice encapsulamiento,
herencia y polimorfismo? Quiero implementar un sistema de partículas con diferentes comportamientos.", esta vez resolver los problemas de creacion de archivos,
donde se vuelve un juego de adivinanza entre que problema que no existiria si un ser humano creara el codigo desde 0, funciones y soluciones que cambian con cada
iteración y errores nunca antes vistos durante el proceso de codigo en programación orientada a objetos vuelven inusable el programa.  
  
(Se que estoy haciendo esto a proposito para ver como funciona en escalas relativamente grandes de codigo, pero los dolores
de cabeza de arreglar el codigo son mas grandes que intentar hacer el codigo a mano, cualquier eficiencia que se pueda conseguir es
inversamente proporcional al tamaño del fragmento de codigo que le pidas a la IA)  
  
Despues de varios intentos de hacer que se tenga sentido sobre el programa, se entiende que el problema no es directamente dentro de los mismos
archivos (en el segundo intento hace falta el archivo de Behavior.h, al no identificar la existencia de 2 archivos con nombres demasiado similares,
de nuevo, otra inconveniencia que no deberia pasar en un entorno con experiencia) sino en la ubicacion de creacion de las clases,
despues de una corta investigación sobre problemas similares, se llega a la conclusión de que el Explorador de Soluciones no esta
mostrando los archivos en sus ubicaciones reales y se ajusta la opcion de "Mostrar todos los archivos" para observar que las clases
(archivos .h y .cpp) creadas despues de la plantilla estan siendo ubicados fuera de la carpeta "src", despues de mover todos estos 
archivos a esta carpeta el programa funciona correctamente.  
  
Cosa que lleva a la discusion de la 2da idea generada solamente por ChatGPT, la cual aunque interesante, es ejecutada de tal manera que se
vuelve considerablemente mas pesado de correr el programa que cualquier otro projecto hecho a lo largo de esta carrera, es dificil observar
su funcionamiento debido a la falta de limites razonables sobre la cantidad de particulas que genera, a la vez que es dificil entender las
diferencias entre cada tipo de comportamiento de las particulas.  
  
Mas pruebas demuestran que el problema no esta en el numero de particulas (la memoria se mantiene estable si no se interfiere en
el proceso) sino en el manejo del programa de su 2da función la cual se define como un atractor de estas particulas que parecen
flotar en patrones irregulares, estos atractores generan interacciones constantes que en el proceso destruyen el desempeño
y la estabilidad de uso de recursos por completo, desde que se introduce un atractor, la memoria procede a subir de forma constante
sin mostrar señales de detenerse, el frame rate tambien disminuye significativamente y añadir mas de un atractor podria
detener todo por completo.  
  
Bajo otra tanda de observaciones, es posible ver que la funcion de atraccion del atractor solo funciona en el primero de estos 
objetos creados, todo objeto despues del primero solo crea un punto gris que no interactua con el resto de las particulas, lo
que nos deja con una memoria sin atractor que inicia en 147 MB (sigue subiendo con el tiempo que corre el programa, alrededor de cada
30 segundos sube un MB, pero se detiene/demora mas desde 152 MB) y con atractor que depende completamente de la cantidad 
de particulas interactuando con el punto causando un aumento significativo hasta alrededor de 226 MB.  
  
Iniciar con esta "idea" tenia el objetivo de generar un entendimiento mas extenso de posibles maneras en las cuales puede funcionar
el uso de estos 3 conceptos (encapsulamiento, herencia y polimorfismo), dando mas espacio para profundizar en lo que implican y
sus limitaciones dentro de lo que podria ser util en el proceso de creacion del arte generativo, a la vez que era una prueba
de fuego de que se le viene primero a la mente a ChatGPT cuando no se le den mas parametros que los basicos sobre un programa
de enfoque creativo, desde este punto se desarrollara la idea principal.  


De vuelta a la idea inicial, la cual tiene un concepto igual de abierto en cuanto a interpretación (2 lineas de triangulos
en movimiento no son muy descriptivos, mucho menos el movimiento de forma exponencial).
Se usa esta idea dentro de ChatGPT "¿Puedes ayudarme a diseñar un proyecto de arte generativo en C++ utilizando openFrameworks que utilice encapsulamiento,
herencia y polimorfismo? Este es un proyecto en el cual 2 sets de nodos triangulares opuestos se mueven de forma exponencial por la pantalla".

#### Enunciado
##### Diseñar y desarrollar un proyecto de arte generativo utilizando openFrameworks.
##### Aplicar conceptos de encapsulamiento, herencia y polimorfismo.
#### Experimentación
#### Reflexión y Ajuste Final
##### ¿Cómo influyó el entendimiento de los mecanismos internos de OOP en el proyecto?
##### ¿Qué desafíos enfrentaste y cómo los superaste?
##### ¿Qué aprendiste sobre el equilibrio entre diseño y eficiencia?
#### Evidencias de los resultados de aprendizaje
