int gridWidth = 10;
int gridHeight = 10;

void setup()
{
	size(640, 480);
	strokeWeight(1);
	stroke(0);
}

void draw()
{
	background(255);

	//Draw a grid
	for (int i = 0; i < width; i = i + gridWidth) {
		for (int j = 0; j < height; j = j + gridHeight) {
			point(i, j);	
		}
	}

  int origox = 100;
  int origoy = 100;
  
  float parableHeight = 151;
  
  float arg2x = 0;
  
  int arbitraryValue = 0;

	for (int k = arbitraryValue; k < arbitraryValue + parableHeight; k = k + 10) {
	
		line(origox, origoy + k, origox + arg2x + k,  origoy + parableHeight);
		}
}
