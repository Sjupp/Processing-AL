float mouseChaserSpeed = 5;
PVector mouseChaserVector,
        mousePointerVector,
        mouseChaserDirection,
        ballVector,
        ballVectorDirection,
        mouseChaserDirectionPerpLeft,
        mouseChaserDirectionPerpRight;
  
void setup() {
  size(640, 480);
  strokeWeight(2);
  
  mouseChaserVector = new PVector(100,100);
  mouseChaserDirection = new PVector(0,0);
  mouseChaserDirectionPerpLeft = new PVector(0,0);
  mouseChaserDirectionPerpRight = new PVector(0,0);
  mousePointerVector = new PVector(0,0);

  ballVector = new PVector(30,30);
  ballVectorDirection = new PVector(1,1);
  
  ellipseMode(CENTER);
}  

void draw() {
  
  background(255);
  mousePointerVector.set(mouseX, mouseY);

  // --- Mouse Pointer & Chaser ---
  float mCVx = mouseChaserVector.x;
  float mCVy = mouseChaserVector.y;
  float mCDx = mouseChaserDirection.x;
  float mCDy = mouseChaserDirection.y;
  float mCDPLx = mouseChaserDirectionPerpLeft.x;
  float mCDPLy = mouseChaserDirectionPerpLeft.y;
  float mCDPRx = mouseChaserDirectionPerpRight.x;
  float mCDPRy = mouseChaserDirectionPerpRight.y;
  float tris1x = mCVx + mCDx * 10;
  float tris1y = mCVy + mCDy * 10;
  float tris2x = mCVx + mCDPLx * 5;
  float tris2y = mCVy + mCDPLy * 5;
  float tris3x = mCVx + mCDPRx * 5;
  float tris3y = mCVy + mCDPRy * 5;


  //fuck me
  // triangle(tris1x, tris1y, tris2x, tris2y, tris3x, tris3y);
  
  //original ellipse
  ellipse(mCVx, mCVy, 10, 10);

  //forward line
  line(mCVx, mCVy, mCVx + mCDx * 10, mCVy + mCDy * 10);

  // //perp line left
  // line(mCVx, mCVy, mCVx + mCDPLx * 10, mCVy + mCDPLy * 10);

  // //perp line right
  // line(mCVx, mCVy, mCVx + mCDPRx * 10, mCVy + mCDPRy * 10);


  println(mouseChaserDirection);

  mouseChaserVector.x += mouseChaserDirection.x * mouseChaserSpeed;
  mouseChaserVector.y += mouseChaserDirection.y * mouseChaserSpeed;
  
  //Set direction
  mouseChaserDirection.x = mousePointerVector.x - mouseChaserVector.x;
  mouseChaserDirection.y = mousePointerVector.y - mouseChaserVector.y;
  mouseChaserDirection.normalize();

  //Perpendicular Vector Left {x | y} => {y | -x}
  mouseChaserDirectionPerpLeft.x = mouseChaserDirection.y;
  mouseChaserDirectionPerpLeft.y = -mouseChaserDirection.x;
  mouseChaserDirectionPerpLeft.normalize();

    //Perpendicular Vector Right {x | y} => {-y | x}
  mouseChaserDirectionPerpRight.x = -mouseChaserDirection.y;
  mouseChaserDirectionPerpRight.y = mouseChaserDirection.x;
  mouseChaserDirectionPerpRight.normalize();
  
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
