//global variables
int frame = 0;
float frequency = 0.01;
float amplitude = 100;

void setup()
{
  size(640, 480);
  strokeWeight(5);
  // frameRate(10);
}

void draw()
{
  background(255);
  println(frame);
  println(sin(frame));

  stroke(0,0,255);
  for (float i = 0; i < width; i = i + 6.4) {
    point(i, (height / 2) + sin((i + frame) * frequency) * amplitude);
  }


  stroke(255,0,0);
  for (float i = 0; i < width; i = i + 6.4) {
    point(i, (height / 2) + cos((i + frame) * frequency) * amplitude);
  }

  frame++;
}
