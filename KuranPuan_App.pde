//import processing.video.*; 
//Movie movie;
PImage img;
PShape rect;
Puan[] p;
boolean flag = false;
int k = 0; 
int l = 0;
int delay = 100;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
void setup() {
  
   //movie = new Movie(this, "zoom.mp4");
  //movie.loop();
  
  background(0, 255, 0);
  fullScreen(P3D);
  smooth();
  frameRate(30);
  noCursor();
  loadScore();
  Collections.shuffle(Arrays.asList(p));
  img = loadImage("deneme.jpg");
}
//void movieEvent(Movie movie) {  
//  movie.read();
//}
void draw() {
  //image(movie, 0, 0);
  //println(mouseX, mouseY);
  //println(second());
  if (flag) {
    delay = (int)random(70, 250);
    for (int k = 0; k< l; k++) {
      p[k].disPlay();
    }
    if (l < 81) {
      l++;
    }
    delay(delay);
  }
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      flag = true;
    } else if (keyCode == DOWN) {
      setup();
    }
  }
}


void loadScore() {
  p = new Puan[81];
  flag = false;
  k = 0; 
  l = 0;
  delay = 100;
  for (int j = 0; j < 9; j++) {
    for (int i = 0; i < 9; i++) {
      p[k] = new Puan(i, j);
      k++;
    }
  }
}
