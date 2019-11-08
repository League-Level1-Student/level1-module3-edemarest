int hopx = 15;
int hopy = 15;
int xpos = 422;
int ypos = 550;
PImage back;
PImage carLeft;
PImage carRight;
PImage frog;

  Car car1 = new Car(3, 430, "R");
  Car car2 = new Car(4, 350, "L");
  Car car3 = new Car(5, 270, "L");
  Car car4 = new Car(6, 190, "R");
  Car car5 = new Car(6, 130, "L");

void setup() {
  size(844,600);
        back = loadImage("froggerBackground.png");
        carLeft = loadImage("carLeft.png");
        carLeft.resize(160,100);
        carRight = loadImage("carRight.png");
        carRight.resize(160,100);
        frog = loadImage("frog.png");
        frog.resize(75,75);
}


void draw() {
  background(back);
  image (frog, xpos, ypos);
  

  //ellipse(xpos, ypos, 20, 20);

  car1.display();
  car1.go();
  intersects(car1);
  car2.display();
  car2.go();
  car3.display();
  car3.go();
  car4.display();
  car4.go(); 
  car5.display();
  car5.go();  
  intersects(car1);
  intersects(car2);
  intersects(car3);
  intersects(car4);
  intersects(car5);
    
  
  
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
  String direction;
  int size = 55;
  //constructor
  Car(int speed, int cary, String direction) {
  this.speed = speed;
  this.cary = cary;
  this.direction = direction;
  }
  
  int getX() {
    return carx;
  }
  int getY() {
    return cary;
  }
   int getSize() {
    return size;
  }
  //display method
  void display(){
      fill(0,255,0);
      if(direction.equals("R")){
      image (carLeft, carx, cary);
      }
      else{
        image (carRight, carx, cary);
      }
  }
  
  //go method
  void go() {
    if (direction.equals("R")) {
        carx = carx - speed;
        if (carx <= 0) {
            carx = 800;
         }
    }
    if (direction.equals("L")) {
      carx = carx + speed;
        if (carx >= 800) {
            carx = 0;
         }
    }
   }
   
   
   }
   
void intersects(Car car) {
     if ((ypos > car.getY() && ypos < car.getY()+50) &&
          (xpos > car.getX() && xpos < car.getX()+car.getSize())) {
             ypos = 550;
      }
}
