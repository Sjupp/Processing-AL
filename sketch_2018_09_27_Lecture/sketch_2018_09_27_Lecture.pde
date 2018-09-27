PVector position;
float speed = 5;

void setup() {
	size(640, 480);
	position = new PVector(width/2, height/2);
	ellipseMode(CENTER);
}

void draw() {

	float xMovement = getAxisRaw("Horizontal") * speed;
	position.x += xMovement;
	// float y = getAxisRaw("Vertical");

	ellipse(position.x, position.y, 20, 20);
}
