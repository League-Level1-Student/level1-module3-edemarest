int hopx = 15;
int hopy = 15;
int xpos = 400;
int ypos = 300;
  Car car1 = new Car(30, 200);
  Car car2 = new Car();
  Car car3 = new Car();
  Car car4 = new Car();

void setup() {
  size(800, 600);
  
  
  
}


void draw() {
  background(#5FCBFF);
  fill(0,200,0);
  ellipse(xpos, ypos, 20, 20);

  car1.display();
  car1.go();
  print(car1.carx + "  " + car1.cary);


  
  
  
  
}

void keyPressed()
{
      if(key == CODED){
         if (xpos < 800 && xpos > 0 && ypos < 800 && ypos > 0) {
                if(keyCode == UP)
            {
                  ypos = ypos - hopy;
            }
            else if(keyCode == DOWN)
            {
                  ypos = ypos + hopy;
            }
            else if(keyCode == RIGHT)
            {
                  xpos = xpos + hopx;
            }
            else if(keyCode == LEFT)
            {
                  xpos = xpos - hopx;
            }
          }
          else {
            xpos = 400;
            ypos = 300;
      }
      }
}


public class Car{
  //variables
  int speed;
  int carx = 800;
  int cary;
  //constructor
  Car(int speed, int cary) {
  this.speed = speed;
  this.cary = cary;
  }
  //display method
  void display(){
      fill(0,255,0);
      rect(carx , 300, 55, 20);
  }
  
  //go method
  void go() {
    carx--;
  if (carx > 0) {
      //carx = carx - speed;
      
  }
  else{
   // carx = 800;
  }
}
}
