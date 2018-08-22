PImage donkey;
PImage tail; 

void setup(){
  

size(600, 400);
  donkey = loadImage("Donkey.jpg");
tail = loadImage("Donkeytail.png");
tail.resize(263,262);
  donkey.resize(width, height);
}
void draw(){
  background(donkey);
  image(tail,mouseX,mouseY);
  image(tail, mouseX-10, mouseY-20);
}