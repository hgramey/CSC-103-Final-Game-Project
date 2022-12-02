class Car {
  
  //variables
  int x;
  int y;
  int w;
  int h;
  
  int left;
  int right;
  int top;
  int bottom;
  
  int carSpeedX = 6;
  
  float speed;
  
  boolean carCollision = false;
  
  Animation carMoveAnimation;

  //constructor
  Car(int startingX, int startingY, int startingW, int startingH, Animation startingAnimation){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
  
    speed = 10;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    carMoveAnimation = startingAnimation;
    //carMoveAnimation.isAnimating = false;
    
    
}

  //functions
  void render(){
    fill(100, 0, 0);
    carMoveAnimation.display(x, y);
    carMoveAnimation.isAnimating  = true;
  }
  
  void moveCar(){
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    x = x + carSpeedX;
      if (x >= 1200){
        x = 0;
      }
  //state 2 car speed 
   if (state == 2){
     carSpeedX = 10;
   }
  //state 3 car speed
  if (state == 3){
     carSpeedX = 15;
  }
  }
  
  //detect car collision
 boolean carCollide(Player aPlayer){
    if (aPlayer.top <= bottom &&
        aPlayer.bottom >= top &&
        aPlayer.right > left &&
        aPlayer.left <= left){
          return true;
        }
    else {
          return false;
        }
 
  }
  
  
 
  
}

  
  
  
  
  
