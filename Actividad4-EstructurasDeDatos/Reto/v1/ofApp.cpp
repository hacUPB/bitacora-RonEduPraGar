#include "ofApp.h"

void ofApp::setup() {
	ofBackground(0);
	ofSetFrameRate(60);

	numLines = 6; // Number of radial lines
	lineLength = 200; // Length of each line (number of nodes)
	amplitude = 30; // Amplitude of the sine wave
	frequency = 2.0; // Frequency of the sine wave
	spacing = 20; // Space between each node

	createRadialLines(numLines);
}

void ofApp::createRadialLines(int count) {
	radialLines.clear();
	float angleStep = TWO_PI / count;

	for (int i = 0; i < count; i++) {
		float angle = i * angleStep; // Angle for the current line
		vector<SphereNode> line;

		// First node is static, will stay at its base position
		float dist = 0;
		ofVec3f dir = ofVec3f(cos(angle), sin(angle), 0);
		ofVec3f basePos = dir * dist;
		float phase = 0;
		line.push_back(SphereNode(basePos, phase, 0, 0)); // Static node, no oscillation

		// Add subsequent nodes that will oscillate vertically and horizontally
		for (int j = 1; j < lineLength / spacing; j++) {
			dist = j * spacing;
			basePos = dir * dist;
			phase = j * 0.3;
			line.push_back(SphereNode(basePos, phase, amplitude, frequency));
		}

		radialLines.push_back(line);
	}
}

void ofApp::update() {
	// Everything is updated within draw, no need to update in the background
}

void ofApp::draw() {
	// Center everything to the middle of the screen
	ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);

	// Draw only **one** center sphere in the middle
	ofSetColor(255);
	ofDrawSphere(0, 0, 0, 12); // Only one center sphere at (0, 0, 0)

	float time = ofGetElapsedTimef();

	// Draw each radial line of spheres
	for (int i = 0; i < radialLines.size(); i++) {
		ofColor color = ofColor::fromHsb((i * 255) / radialLines.size(), 180, 255);

		// Draw the static first node
		radialLines[i][0].draw(time, ofColor(255, 255, 255), 0); // Static first node is white

		// Draw the dynamic nodes (rope effect)
		for (int j = 1; j < radialLines[i].size(); j++) {
			radialLines[i][j].draw(time, color, i * (TWO_PI / radialLines.size()));
		}
	}
}

void ofApp::keyPressed(int key) {
	if (key == 'a') {
		addNodeToAllLines();
	} else if (key == 'r') {
		removeNodeFromAllLines();
	}
}

void ofApp::addNodeToAllLines() {
	for (int i = 0; i < radialLines.size(); i++) {
		int j = radialLines[i].size();
		float angle = i * TWO_PI / radialLines.size();
		float dist = j * spacing;

		ofVec3f dir = ofVec3f(cos(angle), sin(angle), 0);
		ofVec3f basePos = dir * dist;
		float phase = j * 0.3;

		radialLines[i].push_back(SphereNode(basePos, phase, amplitude, frequency));
	}
}

void ofApp::removeNodeFromAllLines() {
	for (auto & line : radialLines) {
		if (line.size() > 1) {
			line.pop_back(); // Keep the first node static, remove the rest
		}
	}
}
