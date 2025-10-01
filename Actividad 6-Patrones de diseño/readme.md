# Experiencia de Aprendizaje 6
## Patrones de diseño
### Analisis de Caso de Estudio
#### ¿Qué hace el patrón observer en este caso?
En este caso, el patrón observer es quien comunica las diferentes secciones dentro del programa sobre el comportamiento de las particulas creadas, cada uno de los grupos de particulas 
tiene un observer atado, que les permite saber el tipo de comportamiento que deben seguir al momento de la interaccion.
#### ¿Qué hace el patrón factory en este caso?
En este caso, el patrón factory maneja los tipos y la cantidad de particulas creadas para cada uno de ellos.
#### ¿Qué hace el patrón state en este caso?
En este caso, el patrón state maneja el comportamiento de las particulas, haciendo uso de la funcion de notify para informar el estado activo de las particulas por medio del teclado.
  
  
#### Experimenta con el código y realiza algunas modificaciones para entender mejor su funcionamiento. Por ejemplo:
- Adiciona un nuevo tipo de partícula.
- Adiciona un nuevo estado.
- Modifica el comportamiento de las partículas.
- Crea otros eventos para notificar a las partículas.
Primero, dentro de la estructura de Factory, somos capaces de observar la estructura de las posibles particulas en el programa.
