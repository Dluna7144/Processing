void setup() {
  PImage waldo = loadImage("waldo.jpg"); // 5. Change this to match your file name.
  size(500, 500);
  waldo.resize(width, height);
  image(waldo, 0, 0);
  doh = minim.loadSample("Doh.wav");
  woohoo = minim.loadSample("WooHoo.mp3");
}

void draw() {
  // 6. Use this print statement to find out the coordinates of Waldo
  //println("X:443 " + mouseX + " Y:201 " + mouseY);

  // 7. If the mouse is on Waldo, print “Waldo found!”
  if (mouseX==443 && mouseY==201) {      
    playWooHoo();
    // Waldo is found, also use the method below to play “Woohoo”

    // Change the name of the sound file if you need to

    // 9. If the mouse is pressed and they’re not on Waldo, play “Doh”
    if (mousePressed==true) {
      if (mouseX!=443 || mouseY!=201) {
        playDoh();
      }
    }
  }
}
// Change the name of the sound file if you need to


void playWooHoo() {
  woohoo.stop();
  woohoo.trigger();
}

void playDoh() {
 println("playDoh");
  doh.stop();
  doh.trigger();
}

import ddf.minim.*;
Minim minim = new Minim(this);
AudioSample doh;
AudioSample woohoo;