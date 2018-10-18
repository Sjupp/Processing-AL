
public class GameObject {

	float x;
	float y;
	float size;
	int setAlpha;

	int turnsAlive = 0;

	boolean alive = false;
	boolean isAliveNextTurn = false;

	public GameObject (float x, float y, float size) {
		this.x = x;
		this.y = y;
		this.size = size;	
	}

	void draw () {
		if (alive) {
			fill(128, setAlpha);
			rect(x, y, size, size);
			setAlpha = 255;
		}
		else  if (!alive) {
		fill(128, setAlpha);
		rect(x, y, size, size);
		setAlpha -= 4;
		}
	}
}