class Ball {
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

  // konstruktør
  Ball(float x, float y, float r, float xVel, float yVel, String name, int farve) {
    xPos=x;
    yPos=y;
    radius=r;
    xSpeed=xVel;
    ySpeed=yVel;
    label=name;
    myColor=farve;
    f = loadFont( "Serif-18.vlw" );
    space=r/3.0;
  }
  

  void display() {
    textFont(f);
    stroke(0);
    fill(0);
    text(label,xPos-space, yPos-space);
    fill(myColor, 90, 90);
    ellipse(xPos, yPos, radius/2, radius/2);
    noFill();
  }

  void moveVert(int direction, float yBot) {
    println("Called m "+ direction + " " + yBot);
      yPos=yPos+(ySpeed*direction);
  }
}
