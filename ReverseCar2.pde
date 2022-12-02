class ReverseCar2 {
  
  //variables
  int x;
  int y;
  int w;
  int h;
  
  int left;
  int right;
  int top;
  int bottom;
  
  int carSpeedX = 5;
  
  int speed;
  
  boolean carCollision = false;
  
  Animation carMoveReverse2Animation;

  //constructor
  ReverseCar2(int startingX, int startingY, int startingW, int startingH, Animation startingAnimation){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
  
    speed = 10;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    carMoveReverse2Animation = startingAnimation;
    carMoveReverse2Animation.isAnimating = false;
    
}

  //functions
  void render(){
    fill(100, 0, 0);
    //rect(x, y, w, h);
    carMoveReverse2Animation.display(x, y);
    carMoveReverse2Animation.isAnimating = true;
  }
  
  void moveCar(){
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    x = x - carSpeedX;
      if (x <= 0){
        x = 1000;
      }
   if (state == 2){
     carSpeedX = 10;
   }
     
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

  
  
  
  
  
