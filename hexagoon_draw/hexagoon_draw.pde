/**
  *  Champi'Mix Hexagoons
  *      v 0.001
**/

int X_MAX = 500;
int Y_MAX = 500;

boolean newPol = false;
int x_c[] = new int[100];
int y_c[] = new int[100];
int number = 1;
void setup(){
  
  for(int j =0;j<100;j++){
    x_c[j]=250;
    y_c[j]=250;
  }
  size(X_MAX, Y_MAX);
  background(0);
  smooth();
  
  fill(250,250,128);
  stroke(128,0,128);
  polygon(6, x_c[0], y_c[0], 20);
}

void polygon(int n, float x, float y, float radius){
  //The angle depends on the 
  float angle = 360.0 / n;
  //Begin creating a shape
  beginShape();
  for (int i = 0; i < n; i++)
  {
    vertex(x + radius * cos(radians(angle * i)),
      y + radius * sin(radians(angle * i)));
  }
  endShape(CLOSE);
  //End creating the shape
}
void draw(){
  background(0);
  for(int i=0; i< number;i++){
    if(x_c[i]==X_MAX){
     x_c[i]=250 ;
    }
    if(y_c[i] == Y_MAX){
      y_c[i]=250;
    }
    int x=(int )(250+(i)*50) % 500;
    polygon(6, x, y_c[i], 20);
    y_c[i]+=1;
  }
  
}
void addPolygon(){
 number++;
 println(number);
}
void mousePressed(){
  loop();
  addPolygon();
}
