class Box {
  float xPos;
  float yPos;
  float boxWidth;
  float boxHeight;
  int hitCounter;
  
  Box(float x, float y, float w, float h) {
    xPos=x;
    yPos=y;
    boxWidth=w;
    boxHeight=h;
    hitCounter=0;
  }
  
  void display() {
    rect(xPos,yPos,boxSize, boxHeight);
  }
  
  void addHit() {
    hitCounter++;
  }
  
  int getHits() {
    return hitCounter;
  }
  
}
