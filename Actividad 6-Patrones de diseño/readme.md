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
``` cpp
Particle * ParticleFactory::createParticle(const std::string & type) {
	Particle * particle = new Particle();

	if (type == "star") {
		particle->size = ofRandom(2, 4);
		particle->color = ofColor(255, 0, 0);
	} else if (type == "shooting_star") {
		particle->size = ofRandom(3, 6);
		particle->color = ofColor(0, 255, 0);
		particle->velocity *= 3;
	} else if (type == "planet") {
		particle->size = ofRandom(5, 8);
		particle->color = ofColor(0, 0, 255);
	}
	return particle;
}
```
A esta estructura le agregamos otro else donde se busca crear un 4to tipo de particula con un intervalo mas grande de tamaño (2-8) y de color neutro (200, 200, 200).
``` cpp
Particle * ParticleFactory::createParticle(const std::string & type) {
	Particle * particle = new Particle();

	if (type == "star") {
		particle->size = ofRandom(2, 4);
		particle->color = ofColor(255, 0, 0);
	} else if (type == "shooting_star") {
		particle->size = ofRandom(3, 6);
		particle->color = ofColor(0, 255, 0);
		particle->velocity *= 3;
	} else if (type == "planet") {
		particle->size = ofRandom(5, 8);
		particle->color = ofColor(0, 0, 255);
	} else if (type == "meteor") {
		particle->size = ofRandom(2, 8);
		particle->color = ofColor(200, 200, 200);
	}
	return particle;
}
```
Luego en la parte de setup(), se añade el ciclo for que define la cantidad de particulas relacionadas al tipo de particula:
``` cpp
void ofApp::setup() {
	ofBackground(0);
	// Crear partículas usando la fábrica
	for (int i = 0; i < 100; ++i) {
		Particle * p = ParticleFactory::createParticle("star");
		particles.push_back(p);
		addObserver(p);
	}

	for (int i = 0; i < 5; ++i) {
		Particle * p = ParticleFactory::createParticle("shooting_star");
		particles.push_back(p);
		addObserver(p);
	}

	for (int i = 0; i < 10; ++i) {
		Particle * p = ParticleFactory::createParticle("planet");
		particles.push_back(p);
		addObserver(p);
	}

	for (int i = 0; i < 50; ++i) {
		Particle * p = ParticleFactory::createParticle("meteor");
		particles.push_back(p);
		addObserver(p);
	}
}
```
