import ddf.minim.*;          //at the very top of your sketch
PImage donkey;
PImage tail; 

AudioSample woohooSound;          //at the top of your sketch
boolean playSound = true;          //at the top of your sketch


boolean hasClicked=false;
int XLocation,YLocation;
void setup(){  
size(600, 400);
  donkey = loadImage("Donkey.jpg");
  tail = loadImage("Donkeytail.png");
  size(600, 400);
  donkey.resize(width, height);
  tail.resize(100,100);
Minim minim = new Minim(this);     //In the setup method
woohooSound = minim.loadSample("homer-woohoo.wav");     //In setup. Change the file name if you need to
}

void draw(){
  
  // stuff thats always going to run
  background(255);
  image(tail,mouseX,mouseY);
  println(mouseX + " " + mouseY); 
 
 // happens only when the mouse is clicked
 if (mousePressed){
XLocation=mouseX;
YLocation=mouseY;
hasClicked=true;
}

// if the person has clicked the screen before
 if(hasClicked){
 image(tail,XLocation, YLocation);
 if(dist(535, 127, XLocation, YLocation) < 40){
     woohooSound.trigger();
     playSound = false;
 }
 }
 
  // if mouse is in top left corner
  if(dist(0, 0, mouseX, mouseY)<30) {
   background(donkey);
   rect(0, 0, 30, 30); 
  rect(515, 107, 40, 40);
}

}