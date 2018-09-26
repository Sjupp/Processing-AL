//Namnskaparprojekt
PVector[] vectorPoints = { /* LETTER A */ //Handskrivet kaos 
                           new PVector(5,11), new PVector(5,12), new PVector(5,13), new PVector(5,14), new PVector(6,10),
                           new PVector(6,12), new PVector(7,10), new PVector(7,12), new PVector(8, 11), new PVector(8, 12),
                           new PVector(8,13), new PVector(8, 14),
                           
                           /* LETTER N */
                           new PVector(10, 10), new PVector(10, 11), new PVector(10, 12), new PVector(10, 13), new PVector(10, 14),
                           new PVector(11, 11), new PVector(12, 12), new PVector(13, 10), new PVector(13, 11), new PVector(13, 12),
                           new PVector(13, 13), new PVector(13, 14),
                           
                           /* LETTER T */
                           new PVector(15, 10), new PVector(16, 10), new PVector(17, 10), new PVector(17, 11), new PVector(17, 12),
                           new PVector(17, 13), new PVector(17, 14), new PVector(18, 10), new PVector(19, 10),
                           
                           /* LETTER O */
                           new PVector(20, 11), new PVector(20, 12), new PVector(20, 13), new PVector(21, 10), new PVector(21, 14),
                           new PVector(22, 10), new PVector(22, 14), new PVector(23, 11), new PVector(23, 12), new PVector(23, 13),
                           
                           /* LETTER N(2) */
                           new PVector(25, 10), new PVector(25, 11), new PVector(25, 12), new PVector(25, 13), new PVector(25, 14),
                           new PVector(26, 11), new PVector(27, 12), new PVector(28, 10), new PVector(28, 11), new PVector(28, 12),
                           new PVector(28, 13), new PVector(28, 14)};
int frame = 0;
float frequency = 0.1;
float amplitude = 15;
float c;

void setup() {
  size(660,480);
  colorMode(HSB);
}

void draw() {
  if (c >= 255) {
    c = 0;
  } else {
    c += 2;
  }
  background(240);
  int k = 0;

  for (int i = 0; i < width / 20; i++) {
    for (int j = 0; j < height / 20; j++) {
      if (k < vectorPoints.length && i == vectorPoints[k].x && j == vectorPoints[k].y){
          strokeWeight(10);
          stroke(c, 255, 255);
          point(i * 20, (j * 20)+ sin((i + frame) * frequency) * amplitude);
          k++;
        } else {
          strokeWeight(1);
          stroke(0);
          point(i * 20, (j * 20)+ sin((i + frame) * frequency) * amplitude);
      }
    }
  }
  frame++;
}
