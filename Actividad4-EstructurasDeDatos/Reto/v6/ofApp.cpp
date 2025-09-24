#include "ofApp.h"

void ofApp::setup() {
	ofBackground(0);
	ofSetFrameRate(60);

	numLines = 6; // Number of radial lines
	lineLength = 200; // Length of each line (number of nodes)
	amplitude = 30; // Amplitude of the sine wave
	frequency = 2.0; // Frequency of the sine wave
	spacing = 20; // Space between each node

	// Set up the 3D camera
	cam.setDistance(500); // Set the camera's distance from the origin

	createRadialLines(numLines);
}

void ofApp::createRadialLines(int count) {
	stackLines.clear();
	queueLines.clear();
	float angleStep = TWO_PI / count;

	for (int i = 0; i < count; i++) {
		float angle = i * angleStep; // Angle for the current line
		vector<SphereNode> stackLine;
		vector<SphereNode> queueLine;

		// First node is static, will stay at its base position for both stack and queue lines
		float dist = 0;
		ofVec3f dir = ofVec3f(cos(angle), sin(angle), 0);
		ofVec3f basePos = dir * dist;
		stackLine.push_back(SphereNode(basePos, 0, 0, 0)); // Static node for stack
		queueLine.push_back(SphereNode(basePos, 0, 0, 0)); // Static node for queue

		// Add subsequent nodes for oscillation (both stack and queue will oscillate)
		for (int j = 1; j < lineLength / spacing; j++) {
			dist = j * spacing;
			basePos = dir * dist;
			stackLine.push_back(SphereNode(basePos, 0, amplitude, frequency));
			queueLine.push_back(SphereNode(basePos, 0, amplitude, frequency));
		}

		// Split lines into stack and queue lines
		if (i < count / 2) {
			stackLines.push_back(stackLine); // First half as stack
		} else {
			queueLines.push_back(queueLine); // Second half as queue
		}
	}
}

void ofApp::update() {
	// Everything is updated within draw, no need to update in the background
}

void ofApp::draw() {
	// Start 3D camera view
	cam.begin();

	// Center everything to the middle of the screen in 3D space
	ofTranslate(0, 0, 0); // The center is now empty, no center sphere

	float time = ofGetElapsedTimef();

	// Draw each stack line of spheres (left half of the lines)
	for (int i = 0; i < stackLines.size(); i++) {
		// Calculate a color gradient based on line index
		ofColor color = ofColor::fromHsb((i * 255) / stackLines.size(), 180, 255);

		// Draw the static first node (white color)
		stackLines[i][0].draw(time, ofColor(255, 255, 255), 0); // Static first node

		// Draw the dynamic nodes (rope effect)
		for (int j = 1; j < stackLines[i].size(); j++) {
			stackLines[i][j].draw(time, color, i * (TWO_PI / stackLines.size())); // Sync lines with same sine pattern
		}
	}

	// Draw each queue line of spheres (right half of the lines)
	for (int i = 0; i < queueLines.size(); i++) {
		// Calculate a color gradient based on line index
		ofColor color = ofColor::fromHsb(((i + stackLines.size()) * 255) / numLines, 180, 255);

		// Skip the static first node for the queue line, so no guide node is drawn
		for (int j = 1; j < queueLines[i].size(); j++) {
			queueLines[i][j].draw(time, color, (i + stackLines.size()) * (TWO_PI / queueLines.size())); // Sync lines with same sine pattern
		}
	}

	// End 3D camera view
	cam.end();
}


void ofApp::keyPressed(int key) {
	if (key == 'a') {
		// Add a node to all stack lines (left half)
		for (int i = 0; i < stackLines.size(); i++) {
			addNodeToStack(i);
		}
	} else if (key == 'r') {
		// Remove a node from all stack lines (left half)
		for (int i = 0; i < stackLines.size(); i++) {
			removeNodeFromStack(i);
		}
	} else if (key == 'w') {
		// Add a node to all queue lines (right half)
		for (int i = 0; i < queueLines.size(); i++) {
			addNodeToQueue(i); // Add to the queue lines
		}
	} else if (key == 'e') {
		// Remove a node from all queue lines (right half)
		for (int i = 0; i < queueLines.size(); i++) {
			removeNodeFromQueue(i); // Remove from the queue lines
		}
	}
}

void ofApp::addNodeToStack(int lineIndex) {
	if (lineIndex < stackLines.size()) {
		int j = stackLines[lineIndex].size();
		float angle = lineIndex * (TWO_PI / stackLines.size());
		float dist = j * spacing;

		ofVec3f dir = ofVec3f(cos(angle), sin(angle), 0);
		ofVec3f basePos = dir * dist;

		stackLines[lineIndex].push_back(SphereNode(basePos, 0, amplitude, frequency));
	}
}

void ofApp::removeNodeFromStack(int lineIndex) {
	if (lineIndex < stackLines.size() && stackLines[lineIndex].size() > 1) {
		stackLines[lineIndex].pop_back(); // Remove the most recent node (LIFO)
	}
}

void ofApp::addNodeToQueue(int lineIndex) {
	if (lineIndex < queueLines.size()) {
		int j = queueLines[lineIndex].size();
		float angle = (lineIndex + stackLines.size()) * (TWO_PI / numLines); // Adjust for right half
		float dist = j * spacing;

		ofVec3f dir = ofVec3f(cos(angle), sin(angle), 0);
		ofVec3f basePos = dir * dist;

		queueLines[lineIndex].push_back(SphereNode(basePos, 0, amplitude, frequency));
	}
}

void ofApp::removeNodeFromQueue(int lineIndex) {
	if (lineIndex < queueLines.size() && queueLines[lineIndex].size() > 1) {
		queueLines[lineIndex].erase(queueLines[lineIndex].begin()); // Remove the oldest node (FIFO)
	}
}
