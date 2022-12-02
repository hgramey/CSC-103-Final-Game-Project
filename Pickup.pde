class Pickup {
  // variables
  int x;
  int y;
  int w;
  int h;
  
  color croissantC;
  
  int left;
  int right;
  int top;
  int bottom;
  
  boolean croissantCollision = false;
  
  Animation croissantAnimation;
  
  
  //constructor
  Pickup(int startingX, int startingY,  int startingW, int startingH, color startingCroissantColor, Animation startingAnimation){ //Animation startingAnimation){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    croissantC = startingCroissantColor;
    
    croissantAnimation = startingAnimation;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
  }
  
  //functions
  
  //croissant
  void render(){
    fill(croissantC);
    croissantAnimation.display(x, y);
    croissantAnimation.isAnimating  = true;
  }
  
  
  
  //pickup croissant 
  boolean pickupCollide(Player aPlayer){
    if (aPlayer.top <= bottom &&
        aPlayer.bottom >= top &&
        aPlayer.right >= left &&
        aPlayer.left <= left){
          return true;
        }
    else {
          return false;
        }
   } 
   
  
}

  
  
  
  
  
  
