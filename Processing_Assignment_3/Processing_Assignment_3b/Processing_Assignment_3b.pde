int frame = 0;
int numberOfPoints = 14;
float radius = 100;


void setup()
{
  size(640, 480);
  background(255);
  strokeWeight(5);
}

void draw()
{
  for (int i = 0; i < numberOfPoints; i++)
  {
  point((width / 2) + cos((TWO_PI * i) / numberOfPoints) * radius,
        (height / 2) + sin((TWO_PI * i) / numberOfPoints) * radius);
  }
  frame++;
}
