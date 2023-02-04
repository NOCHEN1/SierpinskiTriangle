public void setup(){
  background(0);
  size(700,700);
}

public void draw(){
  sierpinski(50,600,600);
}

public void mouseDragged(){//optional]

}

public void sierpinski(int x, int y, int len){
  if(len<=10){
    fill(255);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
