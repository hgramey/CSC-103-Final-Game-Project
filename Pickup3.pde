class Pickup3 {
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
  
  Animation croissant3Animation;
  
  
  //constructor
  Pickup3(int startingX, int startingY,  int startingW, int startingH, color startingCroissantColor, Animation startingAnimation){ //Animation startingAnimation){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    croissantC = startingCroissantColor;
    
    croissant3Animation = startingAnimation;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
  }
  
  //functions
  
  //croissant
  void render(){
    fill(croissantC);
    croissant3Animation.display(x, y);
    croissant3Animation.isAnimating  = true;
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

  
  
  
  
  
  
