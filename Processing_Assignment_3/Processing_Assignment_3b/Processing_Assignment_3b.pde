//global variables
 int frame = 0;


void setup()
{
  size(640, 480);
  strokeWeight(5);
  // frameRate(10);
}

void draw()
{

float amplitude = 100;
int numberOfPoints = 10;
  
  background(255);
  
  for (int i = 0; i < numberOfPoints; i++) //<>// //<>//
  {
  point((height / 2) + sin((TWO_PI * i) / numberOfPoints) * amplitude,
        (height / 2) + cos((TWO_PI * i) / numberOfPoints) * amplitude);
        println(i);
        println(sin((TWO_PI * i) / numberOfPoints) * amplitude);
        println(cos((TWO_PI * i) / numberOfPoints) * amplitude);
         
  }
  
  frame++;
}
