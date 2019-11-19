PImage opening;//title sequence
PImage start;//start button
PImage manual;//instuction page
PImage instruction;//instruction button
boolean startOver = false;
boolean isInstructionOver = false;
int startX, startY; 
int startWidth=50;
int startHeight=75;
int instructionX, instructionY; 
int instructionWidth=50;
int instructionHeight=75;
void setup(){
  size (1710,1222);
  opening= loadImage("opening.png");
  start= loadImage("startbutton.jpg");
  instruction=loadImage("instruction.jpg");
 
  background(opening);
}

void draw (){
  update(mouseX,mouseY);
  background(opening);
  image(start,271,277);
  image(instruction,1214,277);
}

void update(int x, int y) {
  if ( overInstruction(instructionX, instructionY,instructionWidth,instructionHeight) ) {
    startOver=false;
    isInstructionOver = true;
 } else if ( overStart(startX, startY, startWidth, startHeight) ) {
    startOver = true;
    isInstructionOver = false;
  } else {
    startOver = isInstructionOver = false;
  }
}


void mouseClicked(){
  if (isInstructionOver==true) {
     opening= loadImage("instructionscreen.jpg");
    background(manual);
    //background(opening)=false;
  }
 
}
boolean overInstruction(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overStart(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

//void mousePressed() {
//  if (mouseButton == LEFT) {
//    background(opening);
//  } else if (mouseButton == RIGHT) {
//     background(manual);
//  } 
//}
