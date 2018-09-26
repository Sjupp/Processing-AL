double timePerFrame;
double time;

int numBalls = 100;

Ball[] balls = new Ball[numBalls];

void setup () {
	size(640, 480);
	frameRate(120);
	// b = new Ball();
	for (int i = 0; i < numBalls; ++i) {
		balls[i] = new Ball();
	}
}

void draw () {
	int currentTime = millis();
	timePerFrame = (currentTime - time) * 0.001f;

	background(255,255,255);
	
	for (int i = 0; i < balls.length; ++i) {
		Ball ball = balls[i];
		ball.bounce();
		ball.move();
		ball.display();
	}


	time = currentTime;
}

class Ball {
	PVector ballPos, ballVel;
	double acceleration = 600;

	Ball() {
		ballPos = new PVector(random(width),random(height));
		ballVel = new PVector(random(-500, 500),random(-500, 500));
	}

	void move() {
		ballPos.x += timePerFrame * ballVel.x;
		ballPos.y += timePerFrame * ballVel.y;
		ballVel.y += timePerFrame * acceleration;
	}

	void bounce() {
		if (ballPos.x > width) {
			ballPos.x -= width;
		}
		
		if (ballPos.x < 0) {
			ballPos.x = width;
		}

		if (ballPos.y > height) {
			ballVel.y *= -0.9;
			ballVel.x *= 0.9;
			ballPos.y = height;

		}

		if (ballPos.y < 0) {
			ballVel.y *= -0.9;
			ballPos.y = 0;
		}
	}

	void display() {
		fill(255,0,0);
		ellipse(ballPos.x, ballPos.y, 20, 20);
	}

}

	// Alternate boundary check
	// float dY = (vY * frameTime);
	// if (posY + dY > height) {
	// 	dY -= posY - height;
	// 	vY = -vY;
	// }
