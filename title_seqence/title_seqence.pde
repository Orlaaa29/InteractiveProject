PImage opening;//title sequence
PImage start;//start button
PImage manual;//instuction page
PImage instruction;//instruction button
PImage currentimage;
boolean startOver = false;
boolean isInstructionOver = false;
int startX=271, startY=277; 
int startWidth=309;
int startHeight=244;
int instructionX=1214, instructionY=277; 
int instructionWidth=205;
int instructionHeight=247;
void setup(){
  size (1710,1222);
  opening= loadImage("opening.png");
  //start= loadImage("startbutton.jpg");
  //instruction=loadImage("instruction.jpg");
 
  background(opening);
}

void draw (){
  update(mouseX,mouseY);
 println(mouseX);
  //image(start,271,277);
  //image(instruction,1214,277);
}

void update(int x, int y) {
  if ( overInstruction(instructionX, instructionY,instructionWidth,instructionHeight) ) {
    startOver=false;
    isInstructionOver = true;
    println(isInstructionOver);
 } else if ( overStart(startX, startY, startWidth, startHeight) ) {
    startOver = true;
    isInstructionOver = false;
  } else {
    startOver = isInstructionOver = false;
  }
}


void mousePressed(){
  if (isInstructionOver==true) {
     manual= loadImage("instructionscreen.jpg");
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
