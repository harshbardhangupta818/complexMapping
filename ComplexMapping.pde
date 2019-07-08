int a=0,b=100,a2=75,b2=0,c=100;
void setup()
{ 
  size(1300,700);
  background(0);
  frameRate(10000);
  
  textSize(30);
  fill(210);
  text("Z plane",300,45);
  text("W plane",975,45);
  stroke(210);
  strokeWeight(4);
  line(650,0,650,700);
  strokeWeight(2);
  translate(325,350);
  
  line(300,300,-300,300);
  line(300,300,300,-300);
  line(-300,-300,300,-300);
  line(-300,-300,-300,300);
 
  
    translate(650,0);
 
  line(300,300,-300,300);
  line(300,300,300,-300);
  line(-300,-300,300,-300);
  line(-300,-300,-300,300);
 
  
}

void draw()
{ 

    translate(325,350);
  float x = constrain( a- 325,-295,295);
  float y = constrain(b- 350,-295,295);

  
  strokeWeight(3);
  stroke(c,100,20);
  line(x-1,y-1,x,y);
  fill(144);

  
  translate(650,0);
  
  float u = constrain((x*x-y*y)/500,-295,295);
  float v = constrain(2*x*y/500,-295,295);

  line(u-0.005,v-0.005,u,v);

  if(b<650 && b>=100)
  { if(a<800)
    a++;
    else
    {a=0;
    b=b+10;
    if(b<650/2)
    c=c+10;
    else
    c=c-10;
   
  }
  
}

  translate(-650,0);
  float x2 = constrain( a2- 325,-295,295);
  float y2 = constrain(b2- 350,-295,295);

  
  strokeWeight(3);
  stroke(100,20,c);
  line(x2-1,y2-1,x2,y2);
  fill(144);

  
   translate(650,0);
   
  float u2 = constrain((x2*x2-y2*y2)/500,-295,295);
  float v2 = constrain(2*x2*y2/500,-295,295);

  line(u2-0.005,v2-0.005,u2,v2);

  if(a2<630 && a2>=75)
  { if(b2<700)
    b2++;
    else
    {b2=0;
    a2=a2+10;}
}}
