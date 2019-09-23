int mode, S, haf;
//declaring constants
final int intro = 0;
final int game = 1;
final int gameOver = 2;

//colour palet
color red     =#FF0000;
color orange  =#FF6600;
color yellow  =#FFCC00;
color green   =#00CC00;
color blue    =#2200CC;
color violet  =#A30EF7;

//array list
//ArrayList<String> words = new ArrayList<String>();

color [] colors = {red, orange, yellow, green, blue, violet};
String[] colorwords = {"red", "orange", "yellow", "green", "blue", "violet"};
PImage I; 
PImage [] bd;
String leadingZeros = "0";

int C = int(random (0, 6));
int W = int (random(0, 6));

//printlnwords.get(choice);

void setup() {

  I = loadImage("I.jpg");
  I.resize (800,800);
    bd = new PImage[5];
  int index = 0;
  while (index < 5){
    if (index+2 < 20) leadingZeros = "0";
 else leadingZeros ="";
  bd[index] = loadImage("img/frame_" + leadingZeros + (index+2) + "_delay-0.05s");
index++;

  }
  size (800, 800);

  mode=intro;
}

void draw() {
  //mode framework

  if (mode == intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameOver) {
    gameOver();
  } else {
    println("mode error"+mode);
  }
}

void mousePressed() {
  if (mode == intro) {
    mode = game;
  } else if (mode==game) {


    if (C==W) {
      truth=true;
    } else {
      truth=false;
    }
    if (mode == game&& mouseX < 400 ) {
      answer=true;
    }
    if (mode == game&& mouseX > 400 ) {
      answer=false;
    }
    if (truth==answer) {
      haf = int(random(0, 2));



      S++;
    } else {
      mode=gameOver;
    }
    if (haf==0) {
      C = int(random(0, 6));
      W=C;
    }
    if (haf==1) {
      C = int(random(0, 6));
      W = int(random(0, 6));
    }
    while (haf==1&&C==W) {
      C = int(random(0, 6));
      W = int(random(0, 6));
    }






    //game tab-=-=-=-=-=-=-=-=-=
  } else if (mode==gameOver) {
    mode = intro;
  } else {
    println("mode error"+mode);
  }
}
