float timePerFrame = 0.016f;

int numberOfHumanoids = 100;

Humanoid[] humanoids = new Humanoid[numberOfHumanoids];

void setup() {
	size(640, 480);
	
	for (int i = 0; i < numberOfHumanoids; ++i) {
		humanoids[i] = new Humanoid();
	}
}

void draw() {
	background(255);

	for (int i = 0; i < humanoids.length; ++i) {
		Humanoid humanoid = humanoids[i];
		humanoid.move();
		humanoid.bounce();
		humanoid.draw();			
	}

}