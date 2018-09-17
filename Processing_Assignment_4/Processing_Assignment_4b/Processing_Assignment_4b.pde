PVector computerVector;

// Background art
int gridWidth = 10;
int gridHeight = 10;

// Introductory string text
String str1 = "Hej";

// Store mouse position vector
PVector mousePos;


// Gamestate variables
boolean instructions = true;
boolean drawingvector = false;
boolean result = false;


void setup() {
	size(640, 480);
	computerVector = new PVector(random(width), (random(height)));
}

void draw() {
	
	// Background art
	background(255);
  	strokeWeight(1);
	for (int i = 0; i < width; i += gridWidth) {
	for (int j = 0; j < height; j += gridHeight) {
		point(i, j);	
		}
	}
	strokeWeight(5);
	line(0, 0, 0, height);
	line(0, height, width, height);

	// Game controller
	// 1. Get vector
	// println(computerVector);

	// 2. Show instructions
	if (instructions == true) {
		showInstructions("Matcha den här vectorn, tönt! ", computerVector.x, computerVector.y);
	}
	// 3. Get player input vector
	// See mousePressed()

	// 4. Compare vectors
	if (result == true) {
		compareVectors(computerVector, mousePos);
		line(0,height, mousePos.x, height - mousePos.y);
		point(computerVector.x, height - computerVector.y);
	}
	// 5. Give score(?)
	// 6. Remove score, go to step 1.
 }

void mousePressed() {
	int x = round(mouseX);
	int y = round(mouseY) * -1;

	println(x, height + y);

	mousePos = new PVector(x, height + y);
	result = true;
}

void showInstructions(String str, float x, float y) {
	fill(0,0,0);
	textSize(16);
	text(str + round(x) + ", " + round(y),
		(width / 2) - (textWidth(str + round(x) + ", " + round(y)) / 2), 100);
}

void compareVectors(PVector vect1, PVector vect2) {
	float resultX = round(vect1.x - vect2.x);
	float resultY = round(vect1.y - vect2.y);

	String str0 = "Ditt din linje avviker med " + resultX * -1 + " i x-led och " + resultY * -1 + " i y-led.";
	String str1 = "Du får 5 poång!";

	text(str0, width / 2 - textWidth(str0) / 2, 300);
	text(str1, width / 2 - textWidth(str1) / 2, 350);
}
