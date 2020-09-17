Ball[] balls; //<>// //<>//
Box[] boxes;
PointBall pointBall;
boolean[] controls;
boolean pBallMove;
int SIZEOFARRAY=5;
int limit=5;
int boxSize;
int boxHeight;
int space=2;
int scale;
float offSet;
float diameter;

void setup() {
  Ball tmpBall = null;
  Box tmpBox = null;
  pBallMove=false;
  balls = new Ball[SIZEOFARRAY];
  boxes = new Box[SIZEOFARRAY];
  controls = new boolean[SIZEOFARRAY];
  size(800, 600);
  boxSize=70;
  offSet=60;
  boxHeight=height/4;
  scale=(int) (boxSize*1.7);
  float xSpeed=1;
  float ySpeed=1;
  diameter = (boxSize)*1.0;
  pointBall = new PointBall(diameter, height/2.0, diameter);

  //float x, float y, float r, float xVel, float yVel, String name, int farve)
  float diameter = (boxSize)*1.0;
  for (int i=1; i<=balls.length; i++) {
    controls[i-1]=false; 
    tmpBox = new Box(i*scale+offSet, height-boxHeight, boxSize, height-boxHeight);
    boxes[i-1]=tmpBox;

    tmpBall = new Ball(
      (i*scale+boxSize/2.0+offSet), 
      (height-(diameter/2.0)), 
      diameter, 
      xSpeed, ySpeed, 
      ("B_"+i), 
      i*(255/balls.length));   
    balls[i-1]=tmpBall;
  }
  //once();
}

void draw() {
  background(255);

  for (int i=1; i<=limit; i++) {   
    //rect(i*scale+offSet,height-boxHeight,boxSize, height-boxHeight);
    boxes[i-1].display();
    balls[i-1].display(); 
    if (controls[i-1]) {
      println("into move 1");
      balls[i-1].moveVert(-1, 34);
    }
  }
  if (pBallMove) {
    if (pointBall.yPos< boxes[0].yPos) {
      // have a hit?
      if (inBoxesXrange(pointBall.xPos)) {
      }
      pointBall.move(1);
    }
    pointBall.display();
  }
}


void keyPressed() {
  if (key=='1') {
    controls[0]=true;
  }
  if (key=='q') {
    controls[0]=false;
  }
  if (key=='p') {
    pBallMove=true;
  }
  if (key=='P') {
    pBallMove=false;
  }
}

boolean isAHit() {
  boolean retVal=false;

  return retVal;
}

boolean inBoxesXrange(float xPos) {
  float[] xPosses=new float[boxes.length];
  for (int i=0; i<boxes.length; i++) {
    xPosses[i]=boxes[i].xPos;
  }
  float searchVal = binSearch(xPosses,xPos,boxSize);

  boolean retVal=false; //<>//

  return retVal;
}

float binSearch(float[] arr, float target, float tagetWidth) {
  float retVal = 0;
  
  return retVal;
  
}
