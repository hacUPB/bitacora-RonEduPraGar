#pragma once

#include "ofMain.h"

// SphereNode class: Each sphere (node) will independently oscillate in a sine wave pattern in 3D space
class SphereNode {
public:
	ofVec3f basePosition; // Base position of the node
	float amplitude; // Amplitude of the sine wave oscillation
	float frequency; // Frequency of the sine wave oscillation
	float timeOffset; // Offset to make the nodes oscillate at different phases

	// Constructor
	SphereNode(ofVec3f pos, float amp, float freq, float offset)
		: basePosition(pos)
		, amplitude(amp)
		, frequency(freq)
		, timeOffset(offset) { }

	// Get the position of the sphere at a given time
	ofVec3f getPosition(float time) {
		ofVec3f pos = basePosition;
		// Apply sine wave oscillation in X, Y, and Z directions
		pos.x += sin(time * frequency + timeOffset) * amplitude; // X oscillation
		pos.y += sin(time * frequency + timeOffset) * amplitude; // Y oscillation
		// Z can be kept fixed or oscillate as well
		return pos;
	}

	// Draw the sphere at the computed position
	void draw(float time) {
		ofDrawSphere(getPosition(time), 8); // Draw sphere at the calculated position
	}
};

class ofApp : public ofBaseApp {
public:
	void setup();
	void update();
	void draw();

	void keyPressed(int key);
	void addNodeToAllLines();
	void removeNodeFromAllLines();

	void createRadialLines(int count);

	// Radial lines that store nodes
	vector<vector<SphereNode>> radialLines;

	int numLines; // Number of radial lines
	int lineLength; // Length of each radial line (number of nodes)
	int spacing; // Distance between each node
	float amplitude; // Amplitude of the sine wave
	float frequency; // Frequency of the sine wave

	ofEasyCam cam; // Camera for 3D view
};
