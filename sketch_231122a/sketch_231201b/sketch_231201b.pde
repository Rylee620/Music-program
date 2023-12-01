//library
//Global Variables
Minim minim;
AudioPlayer song1;
//
void setup() {
fullScreen();
//Display algorithm
minim = new Minim(this);
String pathway = "../Sound effects Music/MusicDownload/";
String groove = "Groove.mp3";
String extension = ".mp3";
song1 = mimim.loadFile( pathway + groove + extension );
}
//
void draw() {}
//
void keyPressed() {
song1.loop(-1);
}
//
void mousePressed() {}
