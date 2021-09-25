int startX = 100;
int startY = (int)(Math.random()*395)+100;
int endX = 0;
int endY = 100;

void setup() {
  size(600, 600);
  background(255,255,255);

  //grade
  stroke(255, 0, 0);
  noFill();
  circle(340, 155, 85);
  fill(255, 0, 0);
  rect(325, 130, 10, 50);
  rect(325, 130, 40, 10);
  rect(325, 150, 30, 10);

  //paper
  strokeWeight(3);
  stroke(89, 89, 88);
  //fill(255, 255, 255);
  noFill();
  quad(100, 500, 400, 500, 400, 100, 100, 100);


  //marker outlines
  strokeWeight(3);
  stroke(89, 89, 88);

  //blue marker
  fill(72, 144, 217);
  rect(560, 320, 30, 120);
  triangle(560, 440, 590, 440, 575, 470);
  fill(122, 188, 255);
  ellipse(575, 375, 20, 60);

  //red marker
  fill(217, 52, 52);
  rect(410, 320, 30, 120);
  triangle(410, 440, 440, 440, 425, 470);
  fill(247, 124, 124);
  ellipse(425, 375, 20, 60);


  //green marker
  fill(74, 158, 86);
  rect(460, 120, 30, 120);
  triangle(460, 240, 490, 240, 475, 270);
  fill(112, 219, 127);
  ellipse(475, 175, 20, 60);

  //purple marker
  fill(143, 91, 181);
  rect(60, 120, 30, 120);
  triangle(60, 240, 90, 240, 75, 270);
  fill(197, 151, 230);
  ellipse(75, 175, 20, 60);

  //pink marker
  fill(255, 130, 186);
  rect(110, 420, 30, 120);
  triangle(110, 540, 140, 540, 125, 570);
  fill(255, 186, 217);
  ellipse(125, 475, 20, 60);


  //brown marker
  fill(128, 97, 61);
  rect(510, 270, 30, 120);
  triangle(510, 390, 540, 390, 525, 420);
  fill(189, 151, 108);
  ellipse(525, 325, 20, 60);

  //gray marker
  fill(84, 84, 84);
  rect(10, 270, 30, 120);
  triangle(10, 390, 40, 390, 25, 420);
  fill(173, 173, 172);
  ellipse(25, 325, 20, 60);


  //grade
  stroke(255, 0, 0);
  noFill();
  circle(340, 155, 85);
  fill(255, 0, 0);
  rect(325, 130, 10, 50);
  rect(325, 130, 40, 10);
  rect(325, 150, 30, 10);
  strokeWeight(10);
}

void draw() {
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*200));
  while (startX < 380) {
    endX = startX + (int)(Math.random()*30);
    if (endX < 100)
      endX= 100;
    endY = startY + (int)(Math.random()*20)-(int)(Math.random()*17);
    if (endY > 500)
      endY= 500;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed() {
  startX = 100;
  startY = (int)(Math.random()*395)+100;
  endX = 0;
  endY = 100;

  redraw();
}
