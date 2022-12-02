class Player {
  
  //variables
  int x;
  int y;
  
  int w;
  int h;
  
  //color
  
  boolean isMovingLeft;
  boolean isMovingRight;
  boolean isMovingUp;
  boolean isMovingDown; 
  
  int speed;
  
  int left;
  int right;
  int top;
  int bottom;
  
  Animation animation;
  
  //constructor
  Player(int startingX, int startingY, int startingW, int startingH, Animation startingAnimation){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    marieAnimation = startingAnimation;
    
    
    isMovingLeft = false;
    isMovingRight = false;
    isMovingUp = false;
    isMovingDown = false;
    
    speed = 10;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
  }
  
  //functions
  void render(){
    fill(0, 0, 100);
    //rectMode(CENTER);
    //rect(x, y, w, h);
    marieAnimation.display(x, y);
  }
  
  void move(){
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    
    if (isMovingLeft == true){
      x -= speed; // x = x - speed;
    }
    
    if (isMovingRight == true){
      x += speed; // x = x + speed;
    }
    
    if (isMovingUp == true){
      y -= speed; // y = y - speed;
  }
   
   if (isMovingDown == true){
      y += speed; // y = y + speed;
  }
  
  if (y <= 0 && state == 1){
    state = 2;
    x = 500;
    y = 850;
  }

  if (y <= 0 && state == 2){
    state = 3;
    x = 500;
    y = 850;
  }
  
  if (y <= 0 && state == 3){
    state = 4;
  }
  

 }
}
