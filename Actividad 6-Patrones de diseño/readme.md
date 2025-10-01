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
Primero, dentro de la estructura *Factory*, somos capaces de observar la estructura de las posibles particulas en el programa.
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
Lo que nos deja la pantalla con otro grupo de particulas que funcionan igual que los 3 grupos anteriores.

Despues de esto, procedemos a estudiar la estructura *State* y como esta integra sus diferentes estados dentro del comportamiento de las particulas.
``` cpp
void NormalState::update(Particle * particle) {
	particle->position += particle->velocity;
}

void NormalState::onEnter(Particle * particle) {
	particle->velocity = ofVec2f(ofRandom(-0.5f, 0.5f), ofRandom(-0.5f, 0.5f));
}

void AttractState::update(Particle * particle) {
	ofVec2f mousePosition(((ofApp *)ofGetAppPtr())->mouseX, ((ofApp *)ofGetAppPtr())->mouseY);
	ofVec2f direction = mousePosition - particle->position;
	direction.normalize();
	particle->velocity += direction * 0.05;
	ofClamp(particle->velocity.x, -3, 3);
	particle->position += particle->velocity * 0.2;
}

void RepelState::update(Particle * particle) {
	ofVec2f mousePosition(((ofApp *)ofGetAppPtr())->mouseX, ((ofApp *)ofGetAppPtr())->mouseY);
	ofVec2f direction = particle->position - mousePosition;
	direction.normalize();
	particle->velocity += direction * 0.05;
	ofClamp(particle->velocity.x, -3, 3);
	particle->position += particle->velocity * 0.2;
}

void StopState::update(Particle * particle) {
	particle->velocity.x = 0;
	particle->velocity.y = 0;
}
```
Estos estados se encuentran declarados en el .h y se definen dentro del .cpp, mientras que la estructura *Observer* es la que tiene en cuenta el estado sobre el cual deben actuar las particulas.
``` cpp
void Subject::notify(const std::string & event) {
	for (Observer * observer : observers) {
		observer->onNotify(event);
	}
}
  
  
void Particle::onNotify(const std::string & event) {
	if (event == "attract") {
		setState(new AttractState());
	} else if (event == "repel") {
		setState(new RepelState());
	} else if (event == "stop") {
		setState(new StopState());
	} else if (event == "normal") {
		setState(new NormalState());
	}
}
```
Cabe aclarar que estas 2 estructuras se manejan tanto en el .cpp como en el .h, donde la estructura observer funciona en general por todo el programa y se puede utilizar en cualquier parte de las clases, la structura *State* funciona especificamente dentro de update, donde cambia el estado actual seguido por las particulas.

Ya de vuelta al cambio posible, se añade un estado de aceleración, donde las particulas ganan velocidad constantemente hasta que se cambie de estado, este estado se asocia a la tecla 'c'.
``` cpp
class AccelState : public State {
public:
	void update(Particle * particle) override;
}; // Esto va dentro del archivo .h

  
void Particle::onNotify(const std::string & event) {
	if (event == "attract") {
		setState(new AttractState());
	} else if (event == "repel") {
		setState(new RepelState());
	} else if (event == "stop") {
		setState(new StopState());
	} else if (event == "acceleration") {
		setState(new AccelState());
	} else if (event == "normal") {
		setState(new NormalState());
	}
}
  
void AccelState::update(Particle * particle) {
	particle->velocity += particle->position * 0.05;
	ofClamp(particle->velocity.x, -3, 3);
	particle->position += particle->velocity * 0.2;
}

void ofApp::keyPressed(int key) {
	if (key == 's') {
		notify("stop");
	} else if (key == 'a') {
		notify("attract");
	} else if (key == 'r') {
		notify("repel");
	} else if (key == 'c') {
		notify("acceleration");
	} else if (key == 'n') {
		notify("normal");
	}
}
```
Este estado, de la manera que es integrado, termina generando cambios interesantes en cuanto al comportamiento de las particulas, principalmente porque hace que desaparezcan en una esquina, como si existiera un agujero negro dentro de este universo que estamos creando.

Tambien tiene un efecto en los otros estados, donde si se entra a estos durante su funcionamiento, la velocidad es mucho mas alta.

Ahora, en cuanto a la estructura *Observer*
