class Humanoid {
	PVector position, velocity;

	public Humanoid() {
		position = new PVector(random(width), random(height));
		velocity = new PVector(random(1), random(1));
	}

	void move() {
		position.x += timePerFrame * velocity.x;
		position.y += timePerFrame * velocity.y;
	}

	void bounce() {
		if (position.x > width || position.x < 0) {
			velocity.x *= -1;
		}
		if (position.y > height || position.y < 0) {
			velocity.y *= -1;
		}
	}

	void draw() {
		fill(128);
		ellipse(position.x, position.y, 20, 20);
	}

}