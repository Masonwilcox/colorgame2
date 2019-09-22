int right, wrong, x;
float  P;

void game() {
  if ( C == W) {
    x = 0 ;
  } else if ( C == W) {
    x = 1 ;
  }

  background(#08FF05); 
  textSize (100);
  textAlign(CENTER, CENTER);
  fill(0);
  rect(0, 0, 400, 800);

  fill(255);
  rect(400, 0, 400, 1000);

  fill (colors[C]);
  text (""+colorwords[W], 400, 400);
  fill(255);
  text ("true", 200, 100);
  fill(0);
  text ("false", 600, 100);
  if (C==W) {
    answer=true;
  }
  if (C!=W) {
    answer=false;
  }
}

void mouseClicked() {
  if (mode==game) {
    if ( mouseX < 400 ) {
      println("yay");
      guess=true;
      P = random(0, 1);
      while (P > 0.5); 
      C = int(random (0, 6));
      W = int (random(0, 6));
      
    }
    if ( mouseX > 400 ) {
      println("no00");
      guess=false;
            P = random(0, 1);
      while (P < 0.5); 
      C = int(random (0, 6));
      W = int (random(0, 6));
    }
    if (guess==answer) {
    }
    if (guess!=answer) {
      println("no");
      mode = gameOver;
    }
  }
}
