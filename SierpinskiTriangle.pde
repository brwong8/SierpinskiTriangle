
void setup(){
size(400,400);

}
void draw(){ 
 noFill();
 sierpinski(0,400,400);
}
public void sierpinski(int x, int y, int len){
  if (len <= 20){
    ellipse(x,y,len,len);; 
  }
  else{      
      sierpinski(x,y,len/2);
      sierpinski(x+len/2,y,len/2);
      sierpinski(x+len/4,y-len/2,len/2);
        }
}

public void colorChange(){
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
void mousePressed(){
  colorChange();
  redraw();
}
