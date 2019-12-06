PImage[] leafs=new PImage[3];
Leaf [] leaves =new Leaf[100];
void setup(){
size(640,360);

 for (int i = 0; i < leafs.length; i++) {
    leafs[i] = loadImage("leaf" +i+".png");
  }
for (int i = 0; i < leaves.length; i++) {
    int index=int(random(0,leafs.length));
    leaves[i] = new Leaf(leafs[index],200+i*200,500,random(30,150));
    leaves[i].display();
  }
}
void draw(){
background(255);
for (int i = 0; i < leaves.length; i++) {
leaves[i].move();
leaves[i].display();
leaves[i].y +=1;
    if(leaves[i].x > width){
      leaves[i].y = 0;
    }
  }
}


class Leaf{
  float x;
  float y;
  float diameter;
  PImage leafs;


  Leaf(PImage tempImg,float x, float y, float diameter) {
      this.x = x;
      this.y = y;
      this.diameter=diameter;
      leafs=tempImg;
     
    }
    
  void move() {
    x --;
    y=y+random(2,2);
   }

  void display() {
    image(leafs,x,y,diameter,diameter);

    }
}
