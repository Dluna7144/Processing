PImage catpic;
void setup(){
 
  size(800,600);
  catpic=loadImage("Fat cat.jpg");
  catpic.resize(800,600);
  background(catpic);
  
}
void draw(){
   if(mousePressed){
    println("Mouse's x-position: " + mouseX + "/n" +
    "Mouse's y-position: " + mouseY + "/n");
      }
  ellipse(475,209,20,20);   
  ellipse(326,202,20,20);
s
  
}