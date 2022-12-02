class Pickup2 {
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
  
  Animation croissant2Animation;
  
  
  //constructor
  Pickup2(int startingX, int startingY,  int startingW, int startingH, color startingCroissantColor, Animation startingAnimation){ //Animation startingAnimation){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    croissantC = startingCroissantColor;
    
    croissant2Animation = startingAnimation;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
  }
  
  //functions
  
  //croissant
  void render(){
    fill(croissantC);
    croissant2Animation.display(x, y);
    croissant2Animation.isAnimating  = true;
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

  
  
  
  
  
  
