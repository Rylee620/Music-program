import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int appWidth, appHeight;
float xRect1, yRect1;
float xRect2, yRect2;
float xRect3, yRect3;
float xRect4, yRect4;
float xRect5, yRect5;
float xRect6, yRect6;
float xRect7, yRect7;
float xRect8, yRect8;
float rectWidth, rectHeight;
float xRectA, yRectA, rectWidth2, rectHeight2;
float xRectB, yRectB, rectWidth3, rectHeight3;
float xRectC, yRectC;
float xRectD, yRectD;
float xRectE, yRectE;
Minim minim;
int numberOfSongs = 8; 
int numberOfSounds = 4; 
AudioPlayer[] song = new AudioPlayer [numberOfSongs];
AudioPlayer[] sound = new AudioPlayer [numberOfSounds];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; 
AudioMetaData[] soundMetaData = new AudioMetaData[numberOfSounds];
PFont generalFont;
int currentSong = 0;
//
void setup() {
fullScreen();
appWidth = displayWidth;
appHeight = displayHeight;
//Display algorithm
Splash_Screen();
SplashScreenText();
minim = new Minim(this);
 String groove = "groove.mp3";
 String eureka = "Eureka.mp3";
 String simplest = "The_Simplest.mp3";
 String cycles = "Cycles.mp3";
 String ghost = "Ghost_Walk.mp3";
 String newsroom = "Newsroom.mp3";
 String competition = "Competition.mp3";
 String engine = "Engines.mp3";
 String carDoor ="CarDoor.mp3";
 String spring = "SpringAtticDoor.mp3";
 String sting = "Sting.mp3";
 String wood = "WoodenDoor.mp3";
 String extension = ".mp3";
 String pathway = "MusicDownload/Groove_files/"; //Relative Path
 String pathway2 = "SoundDownload/Sound_Files/";
 String path = sketchPath( pathway + groove ); //Absolute Path
 String path2 = sketchPath( pathway + eureka );
 String path3 = sketchPath( pathway + simplest );
 String path4 = sketchPath( pathway + cycles );
 String path5 = sketchPath( pathway + ghost );
 String path6 = sketchPath( pathway + newsroom );
 String path7 = sketchPath( pathway + competition);
 String path8 = sketchPath( pathway + engine);
 String pathA = sketchPath( pathway2 + carDoor);
 String pathB = sketchPath( pathway2 + spring);
 String pathC = sketchPath( pathway2 + sting);
 String pathD = sketchPath( pathway2 + wood);
println(path);
song[0] = minim.loadFile( path );
songMetaData[0] = song[0].getMetaData();
generalFont = createFont("Candara", 45);
//println("?", songMetaData1,?() );
println("File Name", songMetaData[0].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[0].length() );
println("Song Length (in seconds", songMetaData[0].length()/1000 ); println("Song Length (in minutes & seconds)", songMetaData[0].length()/1000/60, "minutes", ( songMetaData[0].length()/1000 - ( songMetaData[0].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[0].title() );
println("Author", songMetaData[0].author() );
println("Composer", songMetaData[0].composer() );
println("Orchestra", songMetaData[0].orchestra() );
println("Album", songMetaData[0].album() );
println("Disc", songMetaData[0].disc() );
println("Publisher", songMetaData[0].publisher() );
println("Date Released", songMetaData[0].date() );
println("Copyright", songMetaData[0].copyright() );
println("Comments", songMetaData[0].comment() );
println("Lyrics", songMetaData[0].lyrics() );
println("Track", songMetaData[0].track() );
println("Genre", songMetaData[0].genre() );
println("Encoded", songMetaData[0].encoded() );
//
println(path);
song[1] = minim.loadFile( path2 );
songMetaData[1] =song[1].getMetaData();
println("File Name", songMetaData[1].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[1].length() );
println("Song Length (in seconds", songMetaData[1].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[1].length()/1000/60, "minutes", ( songMetaData[1].length()/1000 - ( songMetaData[1].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[1].title() );
println("Author", songMetaData[1].author() );
println("Composer", songMetaData[1].composer() );
println("Orchestra", songMetaData[1].orchestra() );
println("Album", songMetaData[1].album() );
println("Genre", songMetaData[1].genre() );
//
println(path);
song[2] = minim.loadFile( path3 );
songMetaData[2] =song[2].getMetaData();
println("File Name", songMetaData[2].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[2].length() );
println("Song Length (in seconds", songMetaData[2].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[2].length()/1000/60, "minutes", ( songMetaData[2].length()/1000 - ( songMetaData[2].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[2].title() );
println("Author", songMetaData[2].author() );
println("Composer", songMetaData[2].composer() );
println("Orchestra", songMetaData[2].orchestra() );
println("Album", songMetaData[2].album() );
println("Genre", songMetaData[2].genre() );
//
println(path);
song[3] = minim.loadFile( path4 );
songMetaData[3] = song[3].getMetaData();
println("File Name", songMetaData[3].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[3].length() );
println("Song Length (in seconds", songMetaData[3].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[3].length()/1000/60, "minutes", ( songMetaData[3].length()/1000 - ( songMetaData[3].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[3].title() );
println("Author", songMetaData[3].author() );
println("Composer", songMetaData[3].composer() );
println("Orchestra", songMetaData[3].orchestra() );
println("Album", songMetaData[3].album() );
println("Genre", songMetaData[3].genre() );
//
println(path);
song[4] = minim.loadFile( path5 );
songMetaData[4] = song[4].getMetaData();
println("File Name", songMetaData[4].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[4].length() );
println("Song Length (in seconds", songMetaData[4].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[4].length()/1000/60, "minutes", ( songMetaData[4].length()/1000 - ( songMetaData[4].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[4].title() );
println("Author", songMetaData[4].author() );
println("Composer", songMetaData[4].composer() );
println("Orchestra", songMetaData[4].orchestra() );
println("Album", songMetaData[4].album() );
println("Genre", songMetaData[4].genre() );
//
println(path);
song[5] = minim.loadFile( path6 );
songMetaData[5] = song[5].getMetaData();
println("File Name", songMetaData[5].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[5].length() );
println("Song Length (in seconds", songMetaData[5].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[5].length()/1000/60, "minutes", ( songMetaData[5].length()/1000 - ( songMetaData[5].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[5].title() );
println("Author", songMetaData[5].author() );
println("Composer", songMetaData[5].composer() );
println("Orchestra", songMetaData[5].orchestra() );
println("Album", songMetaData[5].album() );
println("Genre", songMetaData[5].genre() );
//
println(path);
song[6] = minim.loadFile( path7 );
songMetaData[6] = song[6].getMetaData();
println("File Name", songMetaData[6].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[6].length() );
println("Song Length (in seconds", songMetaData[6].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[6].length()/1000/60, "minutes", ( songMetaData[6].length()/1000 - ( songMetaData[6].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[6].title() );
println("Author", songMetaData[6].author() );
println("Composer", songMetaData[6].composer() );
println("Orchestra", songMetaData[6].orchestra() );
println("Album", songMetaData[6].album() );
println("Genre", songMetaData[6].genre() );
//
println(path);
song[7] = minim.loadFile( path8 );
songMetaData[7] = song[7].getMetaData();
println("File Name", songMetaData[7].fileName() ); //Data correct, verified
println("Song Length (in milliseconds", songMetaData[7].length() );
println("Song Length (in seconds", songMetaData[7].length()/1000 );
println("Song Length (in minutes & seconds)", songMetaData[7].length()/1000/60, "minutes", ( songMetaData[7].length()/1000 - ( songMetaData[7].length()/1000/60)*60 ), "seconds" ); 
println("Song Title", songMetaData[7].title() );
println("Author", songMetaData[7].author() );
println("Composer", songMetaData[7].composer() );
println("Orchestra", songMetaData[7].orchestra() );
println("Album", songMetaData[7].album() );
println("Genre", songMetaData[7].genre() );

//
println(path);
sound[0] = minim.loadFile( pathA );
soundMetaData[0] = sound[0].getMetaData();
generalFont = createFont("Candara", 45);
//println("?", songMetaData1,?() );
println("File Name", soundMetaData[0].fileName() ); //Data correct, verified
println("Sound Length (in milliseconds", soundMetaData[0].length() );
println("Sound Length (in seconds", soundMetaData[0].length()/1000 ); println("Sound Length (in minutes & seconds)", soundMetaData[0].length()/1000/60, "minutes", ( soundMetaData[0].length()/1000 - ( soundMetaData[0].length()/1000/60)*60 ), "seconds" ); 
println("Sound Title", soundMetaData[0].title() );
//
println(path);
sound[1] = minim.loadFile( pathB );
soundMetaData[1] = sound[1].getMetaData();
generalFont = createFont("Candara", 45);
//println("?", songMetaData1,?() );
println("File Name", soundMetaData[1].fileName() ); //Data correct, verified
println("Sound Length (in milliseconds", soundMetaData[1].length() );
println("Sound Length (in seconds", soundMetaData[1].length()/1000 ); println("Sound Length (in minutes & seconds)", soundMetaData[1].length()/1000/60, "minutes", ( soundMetaData[1].length()/1000 - ( soundMetaData[1].length()/1000/60)*60 ), "seconds" ); 
println("Sound Title", soundMetaData[1].title() );
//
println(path);
sound[2] = minim.loadFile( pathC );
soundMetaData[2] = sound[2].getMetaData();
generalFont = createFont("Candara", 45);
//println("?", songMetaData1,?() );
println("File Name", soundMetaData[2].fileName() ); //Data correct, verified
println("Sound Length (in milliseconds", soundMetaData[2].length() );
println("Sound Length (in seconds", soundMetaData[2].length()/1000 ); println("Sound Length (in minutes & seconds)", soundMetaData[2].length()/1000/60, "minutes", ( soundMetaData[2].length()/1000 - ( soundMetaData[2].length()/1000/60)*60 ), "seconds" ); 
println("Sound Title", soundMetaData[2].title() );
//
println(path);
sound[3] = minim.loadFile( pathD );
soundMetaData[3] = sound[3].getMetaData();
generalFont = createFont("Candara", 45);
//println("?", songMetaData1,?() );
println("File Name", soundMetaData[3].fileName() ); //Data correct, verified
println("Sound Length (in milliseconds", soundMetaData[3].length() );
println("Sound Length (in seconds", soundMetaData[3].length()/1000 ); println("Sound Length (in minutes & seconds)", soundMetaData[3].length()/1000/60, "minutes", ( soundMetaData[3].length()/1000 - ( soundMetaData[3].length()/1000/60)*60 ), "seconds" ); 
println("Sound Title", soundMetaData[3].title() );
//song1.loop(0);
xRect1 = appWidth*1/10;
yRect1 = appHeight*1/3;
rectWidth = appWidth*1/6;
rectHeight = appHeight*1/6;
xRect2 = xRect1;
yRect2 = yRect1*1/3;
xRect3 = xRect1;
yRect3 = yRect1*5/3;
xRect4 = xRect1;
yRect4 = yRect1*7/3;
xRect5 = xRect1*12/3;
yRect5 = yRect1;
xRect6 = xRect5;
yRect6 = yRect2;
xRect7 = xRect5;
yRect7 = yRect3;
xRect8 = xRect5;
yRect8 = yRect4;
xRectA = xRect;
yRectA = yRect1;
xRectB = xRect1*8/2.75;
yRectB = yRect1*2/4;
xRectC = xRectB;
yRectC =yRectB*4.75/2;
xRectD = xRectB;
yRectD = yRectB*7.35/2;
xRectE = xRectB;
yRectE = yRectB*9.75/2;
rectWidth2 = rectWidth1;
rectHeight2 = appHeight*1/5;
rectWidth3 = rectWidth*1/2;
rectHeight3 = rectHeight*1/3;
}
//
void draw() {
if ( song[currentSong].isLooping() && song[currentSong].loopCount()!=-1 ) println("There are", song[currentSong].loopCount(), "loops left.");
if ( song[currentSong].isLooping() && song[currentSong].loopCount()==-1) println("Looping Infinitely");
if ( song[currentSong].isPlaying() && !song[currentSong].isLooping()) println("Play Once");
//
//songMetaData1.title()

//println( "Song Position", song1.position(), "Song Length", song1.length() );
}
//
void keyPressed() {
   if ( key==CODED && keyCode==LEFT ) { //PREVIOUS
    song[currentSong].pause();
    if ( currentSong==0 ) {
      currentSong = numberOfSongs-1; //End of PlayList
      song[currentSong].play();
    } else {
      currentSong--;
      song[currentSong].play();
    }
  } //End Previous
  if ( key==CODED && keyCode==RIGHT ) { //NEXT
    song[currentSong].pause();
    if ( currentSong==numberOfSongs-1 ) {
      currentSong = 0; //End of PlayList
      song[currentSong].play();
    } else {
      currentSong++;
      song[currentSong].play();
    }
 
  }
  
  if (key=='P' || key=='p') song[currentSong].play(); //Parameter is milliseconds
  println(key);
  if (key>='1' || key<='9' ) {
    String keystr = String.valueOf(key);
    println(keystr);
  int loopNum = int(keystr);
  song[currentSong].loop(loopNum);
  }
  if ( key=='L' || key=='l') song[currentSong].loop();
  if (key =='M' || key=='m') { //Mute only stops the speakers, not the file
  if (song[currentSong].isMuted() ) {
    song[currentSong].unmute();
  } else {
  song[currentSong].mute();
  }
  }

  if(key=='F' || key=='f') song[currentSong].skip(0);
  if(key=='R' || key=='r') song[currentSong].skip(-1000);
  //Stop button, ask is .playing(), & .pause() & .rewind(), or .rewind() 
  if (key=='S' || key=='s' ) {
   if ( song[currentSong].isPlaying()) {
   song[currentSong].pause(); //auto, rewind()
   } else {
     song[currentSong].rewind(); 
  }
  }
  if  (key=='Y' || key=='y') {
    if ( song[currentSong].isPlaying()==true ) {
   song[currentSong].pause(); 
   } else { 
     song[currentSong].play(); //ERROR, doesn't play
   }
  }
}//End keyPressed
//
void mousePressed() {
if  (mouseX> xRect && mouseX<xRect+rectWidth1 && mouseY>yRect && mouseY<yRect+rectHeight1) homeScreen();
if  (mouseX> xRect1 && mouseX<xRect1+rectWidth && mouseY>yRect1 && mouseY<yRect1+rectHeight) song[0].loop();
if  (mouseX> xRect2 && mouseX<xRect2+rectWidth && mouseY>yRect2 && mouseY<yRect2+rectHeight) song[1].loop();
if  (mouseX> xRect3 && mouseX<xRect3+rectWidth && mouseY>yRect3 && mouseY<yRect3+rectHeight) song[2].loop();
if  (mouseX> xRect4 && mouseX<xRect4+rectWidth && mouseY>yRect4 && mouseY<yRect4+rectHeight) song[3].loop();
if  (mouseX> xRect5 && mouseX<xRect5+rectWidth && mouseY>yRect5 && mouseY<yRect5+rectHeight) song[4].loop();
if  (mouseX> xRect6 && mouseX<xRect6+rectWidth && mouseY>yRect6 && mouseY<yRect6+rectHeight) song[5].loop();
if  (mouseX> xRect7 && mouseX<xRect7+rectWidth && mouseY>yRect7 && mouseY<yRect7+rectHeight) song[6].loop();
if  (mouseX> xRect8 && mouseX<xRect8+rectWidth && mouseY>yRect8 && mouseY<yRect8+rectHeight) song[7].loop();
if  (mouseX> xRectB && mouseX<xRectB+rectWidth3 && mouseY>yRectB && mouseY<yRectB+rectHeight3) sound[0].loop();
if  (mouseX> xRectC && mouseX<xRectC+rectWidth3 && mouseY>yRectC && mouseY<yRectC+rectHeight3) sound[1].loop();
if  (mouseX> xRectD && mouseX<xRectD+rectWidth3 && mouseY>yRectD && mouseY<yRectD+rectHeight3) sound[2].loop();
if  (mouseX> xRectE && mouseX<xRectE+rectWidth3 && mouseY>yRectE && mouseY<yRectE+rectHeight3) sound[3].loop();
}
