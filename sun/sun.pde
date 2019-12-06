PShape sunrays; 
float x,y;
float r=0;

void setup(){
 size(700,700,P2D);
 background(#5dbcff);
 //sunray=loadShape(sunray);  
  sunrays=createShape(GROUP);
PShape sun = createShape(ELLIPSE,350,350,150,150);
  sun.setFill(#ffdf0e);
  sun.setStroke(color(#ffdf0e));
  
  ellipseMode(CENTER);
  
PShape ray1 = createShape();//top
  ray1.beginShape();
  ray1.fill(#ffdf0e);
  ray1.stroke(#ffdf0e);
  ray1.vertex(335, 275);//-15,-75 ellipse bl
  ray1.vertex(370, 275);//20,-75 br
  ray1.vertex(395, 175);//45,-175 tl
  ray1.vertex(265, 175);//-85,-175 tr
  ray1.endShape(CLOSE);
sunrays.addChild(sun);
 sunrays.addChild(ray1); 
 
   PShape ray5 = createShape();//top right
  ray5.beginShape();
  ray5.fill(#ffdf0e);
  ray5.stroke(#ffdf0e);
  ray5.vertex(400,300);//50,-50 ellipse bl
  ray5.vertex(380,335);// 30,-15 tl
  ray5.vertex(500, 110);//150,-240 tr
  ray5.vertex(570, 250);//220,-100 br
  ray5.endShape(CLOSE);

  sunrays.addChild(ray5);
  
  PShape ray3 = createShape();//right
  ray3.beginShape();
  ray3.fill(#ffdf0e);
  ray3.stroke(#ffdf0e);
  ray3.vertex(420,330);//70,-20 ellipse tl
  ray3.vertex(420,370);// 70,20 bl
  ray3.vertex(520, 410);//170,60 br
  ray3.vertex(520, 290);//170,-60 tr
  ray3.endShape(CLOSE);

  sunrays.addChild(ray3);
  
   PShape ray6 = createShape();//bottom right
  ray6.beginShape();
  ray6.fill(#ffdf0e);
  ray6.stroke(#ffdf0e);
  ray6.vertex(400,400);//50,50 ellipse tl
  ray6.vertex(390,415);// 40,65 bl
  ray6.vertex(500, 600);//150,250 br
  ray6.vertex(700, 500);//350,200 tr
  ray6.endShape(CLOSE);

  sunrays.addChild(ray6);
  
 
 PShape ray2 = createShape();//bottom
  ray2.beginShape();
  ray2.fill(#ffdf0e);
  ray2.stroke(#ffdf0e);
  ray2.vertex(365,425);//15,75 ellipse tl
  ray2.vertex(330, 425);// -20,75tr
  ray2.vertex(305, 525);//-45,175 bl
  ray2.vertex(435, 525);//85,175 br
  ray2.endShape(CLOSE);

  sunrays.addChild(ray2);
  
    PShape ray7 = createShape();//bottom left
  ray7.beginShape();
  ray7.fill(#ffdf0e);
  ray7.stroke(#ffdf0e);
  ray7.vertex(310,355);//-40,5 ellipse tl
  ray7.vertex(310, 405);// -40,55tr
  ray7.vertex(280, 600);//-70,250 br
  ray7.vertex(180, 500);//-170,150 bl
  ray7.endShape(CLOSE);

  sunrays.addChild(ray7);
  
  PShape ray4 = createShape();//left
  ray4.beginShape();
  ray4.fill(#ffdf0e);
  ray4.stroke(#ffdf0e);
  ray4.vertex(280,370);//-70,20 ellipse tr
  ray4.vertex(280,330);// -70,-20 br
  ray4.vertex(180, 290);//-170,-60 tl
  ray4.vertex(180, 410);//-170,60 tr
  ray4.endShape(CLOSE);

  sunrays.addChild(ray4);
  
   PShape ray8 = createShape();//bottom right
  ray8.beginShape();
  ray8.fill(#ffdf0e);
  ray8.stroke(#ffdf0e);
  ray8.vertex(320,320);//50,50 ellipse tl
  ray8.vertex(350,395);// 40,65 bl
  ray8.vertex(200, 100);//150,250 br
  ray8.vertex(0, 150);//350,200 tr
  ray8.endShape(CLOSE);
sunrays.addChild(ray8);
  
}

void draw(){
pushMatrix();
 translate(x, y);
 rotate(radians(r));
shape(sunrays);
popMatrix();

r=0.5;
  //background(0);
  //translate(width/2,height/2);
  //rotate(frameCount/360.0*TWO_PI);
  //translate(-sun.width/2,-sun.height/2);
  //image(sun,50,300);

  //sunrays.translate(-350,-350);

 //sunrays.rotate(0.1);
//ellipseMode(CENTER);

}
