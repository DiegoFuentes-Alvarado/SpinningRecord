import ddf.minim.*;
PImage pictureOfRecord;  
int i = 20;
Minim minim;
AudioPlayer song;
void setup(){
  size(300, 300);
  pictureOfRecord= loadImage("record.jpeg");
  pictureOfRecord.resize(width,height);
 minim = new Minim(this);
  song = minim.loadFile("song.mp3", 512);
}
void draw(){
  rotateImage(pictureOfRecord,i);
image(pictureOfRecord, 0,0);

if(mousePressed){
  i++;
  song.play();
 // song.pause();
}
}
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}
