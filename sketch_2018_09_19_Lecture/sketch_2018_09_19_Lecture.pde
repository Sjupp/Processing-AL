float posX;
float posY;
float vX = 1;
float vY = 10;
float a = 1;

float tpf;
float frameTime;
int time;

void setup () {
  size(640,480);
  posX = width / 2;
  posY = height / 2;
  
  frameRate(30);
  
  tpf = 1f / 60f; // 0.016ms
  
}

void draw() {
  
  int currentTime = millis();
  frameTime = currentTime - time; // delta time = time passed during draw()
  frameTime = frameTime * 0.001f; // frameRate / 1000 - millis -> s
  
  background(255,255,255,255);
  
  posX = posX + (vX * frameTime);
  posY = posY + (vY * frameTime);
  ellipse(posX, posY, 10, 10);
  
  vY = vY + (a * frameTime);
  
  if(posY > height) {
    vY = -vY;
    posY = height - 1;
    vY = (int) (vY * 0.9f);
  }
  
  time = currentTime;
}
