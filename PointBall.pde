class PointBall {
  //egenskaber
  float radius;
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  String label;
  int myColor;
  PFont f;
  float space;
  float gravity;
  Location location;

  // konstruktør
  PointBall(float x, float y, float r) {
    xPos=x;
    yPos=y;
    radius=r;
    xSpeed=3;
    ySpeed=0.1;
    label="PointBall";
    myColor=122;
    f = loadFont( "Serif-18.vlw" );
    space=r/3.0;
    gravity=0.1;
    location = new Location(x,y);
  }


  void display() {
    textFont(f);
    stroke(0);
    strokeWeight(1);
    fill(0);
    text(label + "x: " + xPos + " y: "+yPos, xPos-space, yPos-space);
    fill(myColor, 90, 90);
    ellipse(xPos, yPos, radius/2, radius/2);
    noFill();
  }

  void moveVert(int direction, float yBot) {
    println("Called m "+ direction + " " + yBot);
    yPos=yPos+(ySpeed*direction);
  }

  void move(int factor) {
    println("Called m ");
    yPos=yPos+ySpeed;
    ySpeed=ySpeed+gravity;   
    xPos=xPos+xSpeed;
    updateLocation(xPos,yPos);
  }
  
  Location getLocation() {
    return location;
  }
  
  void updateLocation(float x, float y) {
    location.x=x;
    location.y=y; 
  }
}
