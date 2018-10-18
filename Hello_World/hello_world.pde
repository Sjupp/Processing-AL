int numberOfStars = 200;
int starTimer = 30;
float shineValue;
float[] stars;
ArrayList<SpaceLines> spaceLine = new ArrayList<SpaceLines>();

void setup() {
	size(1280, 720);
	stars = new float[numberOfStars];
	starBackground();
}

void draw() {
	background (0);
	
	strokeWeight(1);
	stroke(255);
	animateBackground();
	updateStars();
}

boolean outOfBorders(PVector position) {
	return (position.x > width  || position.y > height  || position.x < 0  || position.y < 0 );
}

void starBackground() {
	for (int i = 0; i < stars.length; i += 2) {
		stars[i] = random(width);
		stars[i+1] = random(height);	
	}
}

void animateBackground() {
	for (int i = 0; i < stars.length; i += 2) {
	shineValue = random(1);
		if (shineValue > 0.9) {
			strokeWeight(2);
			point(stars[i], stars[i+1]);
		}
		else {
			strokeWeight(1);
			point(stars[i], stars[i+1]);
		}
	}
}

void updateStars() {
	if (starTimer > 0) {
		starTimer--;
	}
	else {		
		spaceLine.add(new SpaceLines());
		starTimer = 1;
	}

	for (SpaceLines eachLine : spaceLine) {
		eachLine.move();
		strokeWeight(1);
		eachLine.draw();
	}

	for (int i = 0; i < spaceLine.size(); ++i) {
		if(outOfBorders(spaceLine.get(i).position)) {
			spaceLine.remove(i);
		}
	}
}