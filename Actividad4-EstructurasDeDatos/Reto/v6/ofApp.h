#pragma once

#include "ofMain.h"

// SphereNode class: Each sphere (node) oscillates in a sine wave pattern in 3D space
class SphereNode {
public:
	ofVec3f basePosition; // Base position of the node
	float phaseOffset; // Phase shift for sine wave
	float amplitude; // Amplitude of the sine wave oscillation
	float frequency; // Frequency of the sine wave oscillation

	// Constructor
	SphereNode(ofVec3f pos, float phase, float amp, float freq)
		: basePosition(pos)
		, phaseOffset(phase)
		, amplitude(amp)
		, frequency(freq) { }

	// Get the position of the sphere at a given time
	ofVec3f getPosition(float time, float angle) {
		ofVec3f pos = basePosition;
		// Apply sine wave oscillation in X, Y, and Z directions
		pos.x += sin(time * frequency + phaseOffset) * amplitude * cos(angle); // X oscillation
		pos.y += sin(time * frequency + phaseOffset) * amplitude * sin(angle); // Y oscillation
		pos.z += sin(time * frequency + phaseOffset) * amplitude * sin(angle / 2); // Z oscillation (slower variation)
		return pos;
	}

	// Draw the sphere at the computed position
	void draw(float time, ofColor color, float angle) {
		ofSetColor(color);
		ofDrawSphere(getPosition(time, angle), 8); // Draw sphere at the calculated position
	}
};

class ofApp : public ofBaseApp {
public:
	void setup();
	void update();
	void draw();

	void keyPressed(int key);
	void addNodeToStack(int lineIndex);
	void removeNodeFromStack(int lineIndex);
	void addNodeToQueue(int lineIndex);
	void removeNodeFromQueue(int lineIndex);

	void createRadialLines(int count);

	// Radial lines that store nodes (two sets: stack and queue)
	vector<vector<SphereNode>> stackLines;
	vector<vector<SphereNode>> queueLines;

	int numLines; // Number of radial lines
	int lineLength; // Length of each radial line (number of nodes)
	int spacing; // Distance between each node
	float amplitude; // Amplitude of the sine wave
	float frequency; // Frequency of the sine wave

	ofEasyCam cam; // Camera for 3D view
};
