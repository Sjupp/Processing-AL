class CharacterManager {
	Humanoid[] humanoids;

	public CharacterManager (int amount) {
		humanoids = new Humanoid[amount];

		for (int i = 0; i < humanoids.length; ++i) {
			humanoids[i] = new Humanoid();
		}
	}

	void update(){
		for (int i = 0; i < humanoids.length; ++i) {
			humanoids[i].move();
			humanoids[i].bounce();
			humanoids[i].draw();
		}
	}

}