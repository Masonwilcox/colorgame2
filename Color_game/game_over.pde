int currentPics = 0;
void gameOver(){
  

    image(gob[currentPics], 0, 0, 800, 800); 
  if (frameCount % 3 == 0) {
    currentPics++;
  }
  if (currentPics >= 9) {
    currentPics = 0;
  }
  fill (orange);
  textSize(40);
text ( " You lose click any where to play again", 400,400);
  S = 0;
  T = tt;
  tt = 300;
   

  
}
