
void setup()
{
  size(640, 480);
  background(255);
  strokeWeight(5);
}

void draw()
{
  background(255);
  evenlySpacedCircle(14, 100);
  evenlySpacedSpiral(39, 20, 2);
}

void evenlySpacedCircle(int numberOfPoints, float radius) {
  for (int i = 0; i < numberOfPoints; i++)
  {
    point((width / 4) + cos((TWO_PI * i) / numberOfPoints) * radius,
      (height / 2) + sin((TWO_PI * i) / numberOfPoints) * radius);
  }
}

void evenlySpacedSpiral(int numberOfPoints, float radius, float increase) {
    for (int i = 0; i < numberOfPoints; i++)
  {
    point(((width / 4) * 3) + cos((TWO_PI * i)) * radius,
      (height / 2) + sin((TWO_PI * i) / numberOfPoints) * radius);
      radius += increase;
  }
}
