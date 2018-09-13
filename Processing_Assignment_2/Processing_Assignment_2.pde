int gridWidth = 10;
int gridHeight = 10;

// float origox = 100;
// float origoy = 100;

// float arg1x = 240;
// float arg1y = 10;

// float arg2x = 200;
// float arg2y = 250;

// float mslope = ((arg1x - origox) / 10);

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
  
  /*
  float arg1x = 240;
  float arg1y = 10;
  */
  
  float parableHeight = 150;
  
  float arg2x = 0;
  float arg2y = 100;
  
  int arbitraryValue = 0;
  
  //pixel-hopp (ökar per skriven rad)
  float offset = 0;

	for (int k = arbitraryValue; k < arbitraryValue + parableHeight; k = k + 10) {
	
		line(origox + offset, origoy + k, origox + arg2x + k,  origoy + parableHeight);

		//float fippan = (origoy + parableHeight - origoy + k) / (origox + arg2x + k - origox + offset);

    	offset = offset + 0.5;
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
