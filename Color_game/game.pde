int right, wrong, x;
int currentPic = 0;
float  P;
boolean truth, answer;

void game() {
  if ( C == W) {
    x = 0 ;
  } else if ( C == W) {
    x = 1 ;
  }

  image(bd[currentPic],0,0,800,800); 
  currentPic++;
  if (currentPic >= 5){
   currentPic = 0; 
  }
  
  textSize (100);
  textAlign(CENTER, CENTER);
  fill(0);
  rect(0, 0, 400, 800);

  fill(255);
  rect(400, 0, 400, 1000);

  fill (colors[C]);
  text (""+colorwords[W], 400, 400);
  fill(255);
  text ("true", 200, 200);
    text ("sco     ", 400, 100);
  fill(0);
  text ("false", 600, 200);
  text ("    er ", 400, 100);
    text ("     " + S, 500, 100);





  //if (C==W) {
  //  answer=true;
  //}
  //if (C!=W) {
  //  answer=false;
  //}
}

//void mouseClicked() {
//  if (mode==game) {
//    if ( mouseX < 400 ) {
//      println("yay");
//      guess=true;
//      P = random(0, 1);
//      while (P > 0.5); 
//      C = int(random (0, 6));
//      W = int (random(0, 6));
//    }
//    if ( mouseX > 400 ) {
//      println("no00");
//      guess=false;
//      P = random(0, 1);
//      while (P < 0.5); 
//      C = int(random (0, 6));
//      W = int (random(0, 6));
//    }
//    if (guess==answer) {
//    }
//    if (guess!=answer) {
//      println("no");
//      mode = gameOver;
//    }
//  }
//}
