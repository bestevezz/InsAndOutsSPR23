//Eye Opening by Bryan Estevez
int[] xPos = new int[500];
int[] yPos = new int[500];
int[] rCol = new int[255];
int[] gCol = new int[255];
int[] bCol = new int[255];

void setup(){
  size(800,800);
  background(0,0,0);
  ellipseMode(CENTER);
  
}

void draw(){
  
  for (int i=0; i<xPos.length; i++) {
      xPos[i]= int(random(width));
      yPos[i]= int (random(height));
  }
   for (int i=0; i<rCol.length; i++) {
      rCol[i]= int(random(255));
      gCol[i]= int(random(255));
      bCol[i]= int(random(255));
   }
  
  if (mousePressed == true){
    OpenEye(xPos,yPos,rCol,gCol,bCol);
  }
  if (keyPressed == true){
   ClosedEye(xPos,yPos,rCol,gCol,bCol); 
  }

}

//Creates an open eye with paramters for the positions and iris color
void OpenEye(int x[], int y[], int r[], int g[], int b[]){
  //Fill and ellipse for eye
  fill(255);
  ellipse(x[0],y[0],100,100);
  //Fill and ellipse for pupil
  fill(r[0],g[0],b[0]);
  ellipse(x[0],y[0],50,50);
}

//Creates a closed eye with paramters for the positions and iris color
void ClosedEye(int x[], int y[], int r[], int g[], int b[]){
  //Fill and ellipse for eye
  fill(255);
  ellipse(x[0],y[0],100,40);
  //Fill and ellipse for pupil
  fill(r[0],g[0],b[0]);
  ellipse(x[0],y[0],40,40);
}
