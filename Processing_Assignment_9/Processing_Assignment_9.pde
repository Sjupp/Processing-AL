GameObject cells[][];
float cellSize = 8;
int numberOfColumns;
int numberOfRows;
int fillPercentage = 15;
int aliveNeighbors = 0;
int cellRules;
int time = 1;
int updateInterval = 4;

void setup () {
	size(1280,720);
	frameRate(60);
	stroke(255, 0);
	fill(255);

	initializeGrid();
}

void initializeGrid() {

	numberOfColumns = (int)Math.floor(width / cellSize);
	numberOfRows = (int)Math.floor(height / cellSize);

	cells = new GameObject[numberOfColumns][numberOfRows];

	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {
			cells[x][y] = new GameObject(x * cellSize, y * cellSize, cellSize);
			if (random(0, 100) < fillPercentage) {
				cells[x][y].alive = true;
			}	
		}
	}
}

void draw () {
	background(255);

	if (time > 0) {
		time--;
	}
	else if (time == 0) {
		for (int y = 0; y < numberOfRows; ++y) {
			for (int x = 0; x < numberOfColumns; ++x) {

				cells[x][y].isAliveNextTurn = checkNeighbors(x,y);
			}
		}

		for (int y = 0; y < numberOfRows; ++y) {
			for (int x = 0; x < numberOfColumns; ++x) {

				cells[x][y].alive = cells[x][y].isAliveNextTurn;		
			}
		}

		time = updateInterval;
	}

	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {

			cells[x][y].draw();
		}
	}
}


boolean checkNeighbors (int x, int y) {

	aliveNeighbors = 0;

	for (int j = -1; j < 2; ++j) {
		for (int i = -1; i < 2; ++i) {
			if (!(j == 0 && i == 0)) {
				if ((x+i > 0 && x+i < numberOfColumns -1 && y+j > 0 && y+j < numberOfRows-1)) {
					if (cells[x+i][y+j].alive) {
						aliveNeighbors += 1;
					}
				}
			}
		}
	}
	return applyRules(cells[x][y].alive, aliveNeighbors);
}

boolean applyRules (boolean isAlive, int aliveNeighbors) {

	if (aliveNeighbors == 3 || aliveNeighbors == 2 && isAlive == true)
		return true;
	else
		return false;
}