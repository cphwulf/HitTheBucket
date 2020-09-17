Ball[] balls;
boolean[] controls;
int SIZEOFARRAY=5;
int limit=5;
int boxSize;
int boxHeight;
int space=2;
int scale;

void setup() {
  Ball tmpBall = null;
  balls = new Ball[SIZEOFARRAY];
  controls = new boolean[SIZEOFARRAY];
  size(800, 600);
  boxSize=70;
  boxHeight=height/4;
  scale=(int) (boxSize*1.1);
  float xSpeed=1;
  float ySpeed=1;
  
  //float x, float y, float r, float xVel, float yVel, String name, int farve)
  float diameter = (boxSize)*1.0;
  for (int i=1;i<=balls.length;i++) {
    controls[i-1]=false;   
    tmpBall = new Ball(
    (i*scale+boxSize/2.0),
    (height-(diameter/2.0)),
    diameter,
    xSpeed,ySpeed,
    ("B_"+i),
    i*(255/balls.length));   
    balls[i-1]=tmpBall;
  }
  //once();

}

void draw() {
  background(255);
  noFill();
  
  for (int i=1; i<=limit; i++) {   
    rect(i*scale,height-boxHeight,boxSize, height-boxHeight); //<>//
    balls[i-1].display(); 
    if(controls[i-1]) {
      println("into move 1");
      balls[i-1].moveVert(-1,34);
    }
  }
}

void keyPressed() {
  if(key=='1') {
    controls[0]=true;
  }if(key=='q') {
    controls[0]=false;
  }
    
}
