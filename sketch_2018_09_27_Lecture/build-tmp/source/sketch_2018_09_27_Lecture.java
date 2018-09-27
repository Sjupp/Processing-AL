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

public class sketch_2018_09_27_Lecture extends PApplet {

PVector position;
float speed = 5;

public void setup() {
	
	position = new PVector(width/2, height/2);
	ellipseMode(CENTER);
}

public void draw() {

	float xMovement = getAxisRaw("Horizontal") * speed;
	position.x += xMovement;
	// float y = getAxisRaw("Vertical");

	ellipse(position.x, position.y, 20, 20);
}
boolean moveLeft, moveRight;

public void keyPressed()
{
	println(keyCode);

	if (key == CODED) {
		if (keyCode == RIGHT) {
			moveRight = true;
		}
		else if (keyCode == LEFT) {
			moveLeft = true;
		}
	}

	if (key == 'd') {
		moveRight = true;
	}
	else if (key == 'a') {
		moveLeft = true;
	}
}

public void keyReleased() {

if (key == CODED) {
	if (keyCode == RIGHT) {
		moveRight = false;
	}
	else if (keyCode == LEFT) {
		moveLeft = false;
	}
}

	if (key == 'd') {
		moveRight = false;
	}
	else if (key == 'a') {
		moveLeft = false;
	}
}

public float getAxisRaw(String axis) {
	if (axis == "Horizontal") {
		if (moveLeft) {
			return -1;
		}
		if (moveRight) {
			return 1;
		}
	}
	return 0;
}
  public void settings() { 	size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_2018_09_27_Lecture" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
