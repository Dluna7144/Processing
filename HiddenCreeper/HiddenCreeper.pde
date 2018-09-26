import javax.swing.*;
import java.util.Random;
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
  if (mousePressed){
   if (isNear(mouseX, X) && isNear(mouseY, Y)){
   JOptionPane.showMessageDialog(null, "You Found the Creeper!!!");
     fill(#1EE805);
     Random Location=new Random();
     X=Location.nextInt(width);
     Y=Location.nextInt(height);
  
  
// image(creeper, mouseX, mouseY);

    } else{
    fill(#F70707);
    }
    ellipse(mouseX, mouseY, 20, 20);
    }
}
    boolean isNear(int a, int b) {
if (abs(a - b) < 10)
     return true;
else
     return false;
}