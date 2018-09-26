import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Processing_Assignment_5 extends PApplet {

double timePerFrame;
double time;

int numBalls = 100;

Ball[] balls = new Ball[numBalls];

public void setup () {
	
	frameRate(120);
	// b = new Ball();
	for (int i = 0; i < numBalls; ++i) {
		balls[i] = new Ball();
	}
}

public void draw () {
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

	public void move() {
		ballPos.x += timePerFrame * ballVel.x;
		ballPos.y += timePerFrame * ballVel.y;
		ballVel.y += timePerFrame * acceleration;
	}

	public void bounce() {
		if (ballPos.x > width) {
			ballPos.x -= width;
		}
		
		if (ballPos.x < 0) {
			ballPos.x = width;
		}

		if (ballPos.y > height) {
			ballVel.y *= -0.9f;
			ballVel.x *= 0.9f;
			ballPos.y = height;

		}

		if (ballPos.y < 0) {
			ballVel.y *= -0.9f;
			ballPos.y = 0;
		}
	}

	public void display() {
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
  public void settings() { 	size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Processing_Assignment_5" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
