PImage sun;
float x,y,r;
void setup(){
  size(800,800);
 sun=loadImage("sun.png");
 x=0;
 y=0;
 r=0;
}

void draw(){
translate(x, x);
rotate(radians(r));
imageMode(CORNER);
image(sun,-25,25);
r+=0.5;
}
