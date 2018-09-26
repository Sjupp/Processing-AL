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

public class Processing_Assignment_6 extends PApplet {

float timePerFrame = 0.016f;

int numberOfHumanoids = 100;

Humanoid[] humanoids = new Humanoid[numberOfHumanoids];

public void setup() {
	
	
	for (int i = 0; i < numberOfHumanoids; ++i) {
		humanoids[i] = new Humanoid();
	}
}

public void draw() {
	background(255);

	for (int i = 0; i < humanoids.length; ++i) {
		Humanoid humanoid = humanoids[i];
		humanoid.move();
		humanoid.bounce();
		humanoid.draw();			
	}

}
// class CharacterManager {
// 	Humanoid[] humanoids;

// 	public CharacterManager (int amount) {
// 		humanoids = new Humanoid[amount];

// 		for (int i = 0; i < humanoids.length; ++i) {
// 			//some code for creating humanoids
// 		}
// 	}

// 	void update(){
// 		for (int i = 0; i < humanoids.length; ++i) {
// 			humanoids[i].update();
// 		}
// 	}

// }
class Humanoid {
	PVector position, velocity;

	public Humanoid() {
		position = new PVector(10,10);
		velocity = new PVector(50,50);
	}

	public void move() {
		position.x += timePerFrame * velocity.x;
		position.y += timePerFrame * velocity.y;
	}

	public void bounce() {
		if (position.x > width || position.x < 0) {
			velocity.x *= -1;
		}
		if (position.y > height || position.y < 0) {
			velocity.y *= -1;
		}
	}

	public void draw() {
		ellipse(position.x, position.y, 20, 20);
	}

}
  public void settings() { 	size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Processing_Assignment_6" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
