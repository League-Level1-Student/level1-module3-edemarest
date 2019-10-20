  int xpos = 250;
  int ypos = 250;
  int velocity = 12;
  int gravity = 2;
  int pipex = 500;
  int upperPipeHeight = 200;
  int pipeGap = 100;
  int lowerY = 300;
  int score = 0;
  
void setup() {
  size(500,500);
}

void draw() {
  
  //creating all elements
  background(#9FF1FA);
  fill(0, 100, 0);
  stroke(0, 0, 0);
  ellipse(xpos, ypos, 20, 20);
  fill(#65E86C);
  rect(pipex, 0, 70, upperPipeHeight);
  rect(pipex, lowerY, 70, 500);
  fill(#C69F48);
  rect(0, 475, 600, 200);
   fill(#050505);
  textSize(32);
  text("SCORE: " + score, 30, 30); 
  
  
  //flap
  if(mousePressed) {
    mousePressed();
  }
  
  //teleport pipes
  if (pipex == 0) {
    pipex = 500;
    upperPipeHeight = (int) random(100, 400);
   lowerY = upperPipeHeight + pipeGap; 
   score++;
 }
 
 //incrementing
  pipex--;
  ypos = ypos + gravity;
  
  //if intersecting pipes
  if (intersectsPipes()) {
    background(200,0,0);
    fill(#FFFFFF);
    textSize(32);
    text("YOU LOSE!", 10, 30); 
    text("SCORE: " + score, 10, 60); 
    exit();
  }
  
  if (ypos >= 475) {
    background(200,0,0);
    fill(#FFFFFF);
    textSize(32);
    text("YOU LOSE!", 10, 30); 
    text("SCORE: " + score, 10, 60); 
    exit();
  }
}





void mousePressed() {
      ypos = ypos - velocity;
}
boolean intersectsPipes() { 
         if (ypos < upperPipeHeight && xpos > pipex && xpos < (pipex+70)){
            return true; }
        else if (ypos>lowerY && xpos > pipex && xpos < (pipex+70)) {
            return true; }
        else { return false; }
}
