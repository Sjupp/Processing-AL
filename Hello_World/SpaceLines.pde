public class SpaceLines {
	PVector direction;
	PVector position;
	int speed;
	int frames;


	public SpaceLines() {
		direction = new PVector(random(-1,1), random(-1,1)).normalize();
		position = new PVector(width/2, height/2);
		position.x += direction.x * random(30);
		position.y += direction.y * random(30);
		speed = 10;
	}

	public void move() {
		frames++;
	}

	public void draw() {
		line(position.x + direction.x * graph(frames) * speed,
			 position.y + direction.y * graph(frames) * speed,
			 position.x + direction.x * graph(frames - 1) * speed,
			 position.y + direction.y * graph(frames - 1) * speed);
	}

	private float graph(float y) {
		float x = pow(y * 0.1f, 6);
		return x;
	}

}
