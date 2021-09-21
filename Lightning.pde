void setup(){
  size(300,300);
  background(230,230,230);
  strokeWeight(4);
}

void draw(){
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  int startX = 0;
  int startY = 150;
  int endX = 0;
  int endY = 150;
  while (startX < 300){
    endX = startX + ((int)Math.random()*10);
    endY = startY + ((int)(Math.random()*20)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    
    
  }
}

void mouseClicked(){
  line(0, 150, 0, 150);
}
