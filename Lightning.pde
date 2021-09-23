int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup() {
  size(450, 650);
  background(237,237,237);
  strokeWeight(10);
}

void draw() {
  noStroke();
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*200));
  while (startX < 650) {
    endX = startX + (int)(Math.random()*30);
    endY = startY + (int)(Math.random()*30)-9;
    // different colors in one lightning   
    //stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
}

void mousePressed() {
  startX = 0;
  startY = (int)(Math.random()*650);
  endX = 0;
  endY = 0;

  redraw();
}
