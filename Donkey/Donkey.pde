PImage donkey;
PImage tail; 

void setup(){
size(600, 400);
  donkey = loadImage("Donkey.jpg");
  tail = loadImage("Donkeytail.png");
  size(600, 400);
  donkey.resize(width, height);
  tail.resize(100,100);
}

void draw(){
 
  if(dist(0, 0, mouseX, mouseY)<30)
  
  {
  background(donkey);
  image(tail,mouseX,mouseY);
  rect(0, 0, 30, 30); 
  println(mouseX + " " + mouseY);
  if(mousePressed){
  rect(454, 75, 40, 40); 
  
  } 
  }

 else {
 
  background(255);
  if(mousePressed){
    
  
    
  }
}
background(donkey);
  println(mouseX + " " + mouseY);

}