float mouseChaserSpeed = 5;
PVector mouseChaserVector,
        mousePointerVector,
        mouseChaserDirection,
        ballVector,
        ballVectorDirection;
  
void setup() {
  size(640, 480);
  strokeWeight(2);
  
  mouseChaserVector = new PVector(100,100);
  mouseChaserDirection = new PVector(0,0);
  
  ballVector = new PVector(30,30);
  ballVectorDirection = new PVector(1,1);
  
  ellipseMode(CENTER);
}  

void draw() {
  
  background(255);
  mousePointerVector = new PVector(mouseX, mouseY);
  
  // --- Mouse Pointer & Chaser ---
  ellipse(mouseChaserVector.x, mouseChaserVector.y, 10, 10);
  line(mouseChaserVector.x, mouseChaserVector.y, mouseChaserVector.x + mouseChaserDirection.x * 10, mouseChaserVector.y + mouseChaserDirection.y * 10);
  mouseChaserVector.x += mouseChaserDirection.x * mouseChaserSpeed;
  mouseChaserVector.y += mouseChaserDirection.y * mouseChaserSpeed;
  
  //Set direction
  mouseChaserDirection.x = mousePointerVector.x - mouseChaserVector.x;
  mouseChaserDirection.y = mousePointerVector.y - mouseChaserVector.y;
  mouseChaserDirection.normalize();
  
  // --- Ball ---
  point(ballVector.x, ballVector.y);
  ballVectorDirection.normalize();
  
  //Horizontal collision
  if(ballVector.x > width || ballVector.x < 0) {
    ballVectorDirection.x *= -1;
  }

  //Vertical collision
  if(ballVector.y > height || ballVector.y < 0) {
    ballVectorDirection.y = ballVectorDirection.y * -1;
  }
  
  //Ball movement
  ballVector.x += ballVectorDirection.x * mouseChaserSpeed;
  ballVector.y += ballVectorDirection.y * mouseChaserSpeed;
  
}
