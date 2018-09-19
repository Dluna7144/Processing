PImage creeper;
int X=645;
int Y=366;


void setup(){
  size(854, 480);
  PImage minecraft = loadImage("MinecraftBush.png");     
  minecraft.resize(width, height);          
  background(minecraft); 

  creeper=loadImage("Minecraft Creeper.png");
  creeper.resize(1200,1200);

}


void draw(){
  println(mouseX + " " + mouseY);
  // image(creeper, mouseX, mouseY);
  
}