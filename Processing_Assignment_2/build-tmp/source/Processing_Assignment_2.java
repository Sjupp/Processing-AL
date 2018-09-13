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

public class Processing_Assignment_2 extends PApplet {

int gridWidth = 10;
int gridHeight = 10;

// float origox = 100;
// float origoy = 100;

// float arg1x = 240;
// float arg1y = 10;

// float arg2x = 200;
// float arg2y = 250;

// float mslope = ((arg1x - origox) / 10);

public void setup()
{
	
	strokeWeight(1);
	stroke(0);
}

public void draw()
{
    frameRate(1);
	background(255);

	//Draw a grid
	for (int i = 0; i < width; i = i + gridWidth) {
		for (int j = 0; j < height; j = j + gridHeight) {
			point(i, j);	
		}
	}

int origox = 100;
int origoy = 100;

/*
float arg1x = 240;
float arg1y = 10;
*/

float arg2x = 200;
float arg2y = 250;

float mslope = 10;


	for (int k = origox; k < 150; k = k + 4) {
		line(origox, origoy + k, arg2x + k, arg2y);
		println(k);
		}
	}
/*
  line(10,100,150,100);

	parabol(10, 10, 200, 200);
}

void parabol(int a, int b, int c, int d)
{
	for (int k = a; k < d; k = k + 10) {
		line(a, b + k, c + k, d);
	}
}
*/
  public void settings() { 	size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Processing_Assignment_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
