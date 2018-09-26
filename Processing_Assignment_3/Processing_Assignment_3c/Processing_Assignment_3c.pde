int frames = 0;
int j = 0;
float radius = 480;
  
void setup()
{
  size(640, 480);
  strokeWeight(5);
}

void draw()
{
  int numberOfPoints = 5;
  
    j = frames % 400;
  
  if (j == 3)
  {
    radius =+ 200;
  }
  else
  {
    radius--;
  }
  
  for (int i = 0; i < numberOfPoints; i++)
  {
  point((width / 2) + cos((TWO_PI * i + frames) / numberOfPoints) * radius,
        (height / 2) + sin((TWO_PI * i + frames) / numberOfPoints) * radius);
  }

  frames++;
}
