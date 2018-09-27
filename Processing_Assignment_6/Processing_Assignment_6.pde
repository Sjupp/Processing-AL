float timePerFrame = 0.016f;

int numberOfHumanoids = 100;

CharacterManager charMgr;

void setup() {
	size(640, 480);
	charMgr = new CharacterManager(numberOfHumanoids);
}

void draw() {
	background(255);

	charMgr.update();
}