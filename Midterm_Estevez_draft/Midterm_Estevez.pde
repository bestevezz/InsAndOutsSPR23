int scene = 0;
float circleX;
float circleY;
float circleX2;
float circleY2;
float circleX3;
float circleY3;

void setup(){
  size (800,800);
  background(100,100,100);
  ellipseMode(CENTER);
  circleX = random(100,700);
  circleY = random(100,700);
  circleX2 = random(100,700);
  circleY2 = random(100,700);
  circleX3 = random(100,700);
  circleY3 = random(100,700);

}

void draw(){
  if (scene==1){
    if((mousePressed==true) && (mouseX >= circleX-50) && (mouseX <= circleX+50)
    && (mouseY >= circleY-50) && (mouseY <= circleY+50)) {
      createPoked(circleX,circleY);
    }
    else if((mousePressed==true) && (mouseX >= circleX2-50) && (mouseX <= circleX2+50)
    && (mouseY >= circleY2-50) && (mouseY <= circleY2+50)) {
     createPoked(circleX2,circleY2); 
    }
    else if((mousePressed==true) && (mouseX >= circleX3-50) && (mouseX <= circleX3+50)
    && (mouseY >= circleY3-50) && (mouseY <= circleY3+50)) {
     createPoked(circleX3,circleY3); 
    }
  }
}

void createUnPoked(float x, float y) {
  
  fill(255);
  ellipse(x,y,100,100);
  fill(0);
  ellipse(x,y,40,40);
  }
  
void createPoked(float x, float y) {
  fill(255,0,0);
  ellipse(x,y,100,100);
  fill(0);
  ellipse(x,y,40,40);
  }
  
void keyPressed(){
  if (key == '1'){
    scene=1;
    createUnPoked(circleX,circleY);
    createUnPoked(circleX2,circleY2);
    createUnPoked(circleX3,circleY3);

  }
  
}
