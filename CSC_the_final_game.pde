//// it takes a few seconds for the player and obstacles to appear

import processing.sound.*;

// declare my vars
Player p1;

Obstacle o1;
Obstacle o2;
  Obstacle o3;
  Obstacle o4;
    Obstacle o5;
    Obstacle o6;
Obstacle o7;
Obstacle o8;
  Obstacle o9;
  Obstacle o10;
    Obstacle o11;
    Obstacle o12;
Obstacle o13;
Obstacle o14;
  Obstacle o15;
  Obstacle o16;
    Obstacle o17;
    Obstacle o18;

Pickup pi1;
Pickup2 pi21;
Pickup3 pi31;
  Pickup pi2;
  Pickup2 pi22;
  Pickup3 pi32;
    Pickup pi3;
    Pickup2 pi23;
    Pickup3 pi33;

Car c1;
Car2 c21;
  Car c2;
  Car2 c22;
    Car c3;
    Car2 c23;

ReverseCar rc1;
ReverseCar2 rc21;
  ReverseCar rc2;
  ReverseCar rc22;
    ReverseCar rc3;
    ReverseCar rc23;
  

SoundFile parisianSong;
SoundFile walkinggSound;

ArrayList<Obstacle> obstacleList;

int state = 0;

int i = 0;

int x;
int y;

int pScore;
int pScoreX;
int pScoreY;
color pColor;

boolean noCroissant;

PImage startScreenImg;

PImage loseScreenImg;

PImage winScreenImg;

PImage cobblestone;

PImage bushImage;


//croissant images for animation
PImage[] croissantImages = new PImage[5];

PImage croissantImage1;
PImage croissantImage2;
PImage croissantImage3;
PImage croissantImage4;
PImage croissantImage5;

Animation croissantAnimation;
Animation croissant2Animation;
Animation croissant3Animation;



//car images for animation
PImage[] carImages = new PImage[2];


PImage carImage1;
PImage carImage2;

Animation carAnimation;
Animation car2Animation;


//marie images for marie animation
PImage[] marieImages = new PImage[3];

PImage marieImage1;
PImage marieImage2;
PImage marieImage3;

Animation marieAnimation;



//reverse car images for aniamtion
PImage[] carReverseImages = new PImage[2];

PImage carReverseImage1;
PImage carReverseImage2;

Animation carReverseAnimation;

Animation carReverse2Animation;


void setup(){
  size(1000, 900);
  
  bushImage = loadImage("bush.jpg");
  //bushImage.resize(100, 100);
  
  marieImage1 = loadImage("Marie0.png");
  marieImage2 = loadImage("Marie1.png");
  marieImage3 = loadImage("Marie2.png");
  
  marieImage1.resize(50, 50);
  marieImage2.resize(50, 50);
  marieImage3.resize(50, 50);
  
  //marieImages[i++] = loadImage("Marie"+i+".png");
  marieImages[0] = marieImage1;
  marieImages[1] = marieImage2;
  marieImages[2] = marieImage3;
  
  marieAnimation = new Animation(marieImages, 0.3, 3);
  
   for (int i=0; i<marieImages.length; i++){
    marieImages[i] = loadImage("Marie" +i+ ".png");   //will load all images for animation
  }
  
  croissantImage1 = loadImage("theCroissant0.png");
  croissantImage2 = loadImage("theCroissant1.png");
  croissantImage3 = loadImage("theCroissant2.png");
  croissantImage4 = loadImage("theCroissant3.png");
  croissantImage5 = loadImage("theCroissant4.png");
  
  croissantImage1.resize(50, 50);
  croissantImage2.resize(50, 50);
  croissantImage3.resize(50, 50);
  croissantImage4.resize(50, 50);
  croissantImage5.resize(50, 50);
  
  croissantAnimation = new Animation(croissantImages, 0.04, 0.05);
  croissant2Animation = new Animation(croissantImages, 0.04, 0.05);
  croissant3Animation = new Animation(croissantImages, 0.04, 0.05);
  
  for (int i=0; i<croissantImages.length; i++){
    croissantImages[i] = loadImage("theCroissant" +i+ ".png");   //will load all images for animation
  }
  
  carImage1 = loadImage("red car0.png");
  carImage2 = loadImage("red car1.png");
  
  carImage1.resize(100, 35);
  carImage2.resize(100, 35);
  
  carImages[0] = carImage1;
  carImages[1] = carImage2;
  
  carAnimation = new Animation(carImages, 0.04, 2);
  car2Animation = new Animation(carImages, 0.04, 2);
  
    for (int i=0; i<carImages.length; i++){
    carImages[i] = loadImage("red car" +i+ ".png");   //will load all images for animation
  }
  
  carReverseImage1 = loadImage("red car reverse0.png");
  carReverseImage2 = loadImage("red car reverse1.png");
  
  carReverseImage1.resize(100, 35);
  carReverseImage2.resize(100, 35);
  
  carReverseImages[0] = carReverseImage1;
  carReverseImages[1] = carReverseImage2;
  
  carReverseAnimation = new Animation(carReverseImages, 0.04, 2);
  carReverse2Animation = new Animation(carReverseImages, 0.04, 2);
 
  for (int i=0; i<carReverseImages.length; i++){
    carReverseImages[i] = loadImage("red car reverse" +i+ ".png");   //will load all images for animation
    
  noCroissant = false;
  }
  
 
  //initialize my vars
  p1 = new Player(width/2, 750, 50, 50, marieAnimation);
  
  o1 = new Obstacle(1100, 300, 600, 50);
  o2 = new Obstacle(300, 300, 600, 50);
  o3 = new Obstacle(50, 500, 300, 50);
  o4 = new Obstacle(800, 500, 800, 50);
  o5 = new Obstacle(200, 100, 400, 50);
  o6 = new Obstacle(800, 100, 400, 50);
  o7 = new Obstacle(800, 100, 400, 50);
  o8 = new Obstacle(800, 100, 400, 50);
  o9 = new Obstacle(800, 100, 400, 50);
  o10 = new Obstacle(800, 100, 400, 50);
  o11 = new Obstacle(800, 100, 400, 50);
  o12 = new Obstacle(800, 100, 400, 50);
  o13 = new Obstacle(800, 100, 400, 50);
  o14 = new Obstacle(800, 100, 400, 50);
  o15 = new Obstacle(800, 100, 400, 50);
  o16 = new Obstacle(800, 100, 400, 50);
  o17 = new Obstacle(800, 100, 400, 50);
  o18 = new Obstacle(800, 100, 400, 50);
  
  pi1 = new Pickup(700, 300, 50, 50, color(150, 120, 30), croissantAnimation);
  pi21 = new Pickup2(300, 500, 50, 50, color(150, 120, 30), croissant2Animation);
  pi31 = new Pickup3(500, 100, 50, 50, color(150, 120, 30), croissant3Animation);
    pi2 = new Pickup(700, 300, 50, 50, color(150, 120, 30), croissantAnimation);
    pi22 = new Pickup2(300, 500, 50, 50, color(150, 120, 30), croissant2Animation);
    pi32 = new Pickup3(500, 100, 50, 50, color(150, 120, 30), croissant3Animation);
      pi3 = new Pickup(700, 300, 50, 50, color(150, 120, 30), croissantAnimation);
      pi23 = new Pickup2(300, 500, 50, 50, color(150, 120, 30), croissant2Animation);
      pi33 = new Pickup3(500, 100, 50, 50, color(150, 120, 30), croissant3Animation);
  
  c1 = new Car(50, 200, 100, 35, carAnimation);
  c21 = new Car2(50, 600, 100, 35, car2Animation);
    c2 = new Car(50, 200, 100, 35, carAnimation);
    c22 = new Car2(50, 600, 100, 35, car2Animation);
      c3 = new Car(50, 200, 100, 35, carAnimation);
      c23 = new Car2(50, 600, 100, 35, car2Animation);
  
  rc1 = new ReverseCar(950, 650, 100, 35, carReverseAnimation);
  rc21 = new ReverseCar2(950, 400, 100, 35, carReverse2Animation);
    rc2 = new ReverseCar(950, 650, 100, 35, carReverseAnimation);
    rc22 = new ReverseCar(950, 400, 100, 35, carReverse2Animation);
      rc3 = new ReverseCar(950, 650, 100, 35, carReverseAnimation);
      rc23 = new ReverseCar(950, 400, 100, 35, carReverse2Animation);
  
  obstacleList = new ArrayList<Obstacle>();
  
  obstacleList.add(o1);
  obstacleList.add(o2);
  obstacleList.add(o3);
  obstacleList.add(o4);
  obstacleList.add(o5);
  obstacleList.add(o6);
  obstacleList.add(o7);
  obstacleList.add(o8);
  obstacleList.add(o9);
  obstacleList.add(o10);
  obstacleList.add(o11);
  obstacleList.add(o12);
  obstacleList.add(o13);
  obstacleList.add(o14);
  obstacleList.add(o15);
  obstacleList.add(o16);
  obstacleList.add(o17);
  obstacleList.add(o18);
  
  parisianSong = new SoundFile(this, "parisianSong.mp3");
  walkinggSound = new SoundFile(this, "walkinggSound.mp3");
  
  pScore = 0;
  pScoreX = 950;
  pScoreY = 50;
  pColor = color(255);
  
  
  
  //bushImage.resize(bushImage.width/2, bushImage.height/2);
  
  startScreenImg = loadImage("startScreen.jpeg");
  startScreenImg.resize(width, height);
  
  loseScreenImg = loadImage("loseScreen.jpg");
  loseScreenImg.resize(width, height);
  
  winScreenImg = loadImage("winScreen.jpg");
  winScreenImg.resize(width, height);
  
  cobblestone = loadImage("cobblestone.jpeg");
  cobblestone.resize(width, height);
  
  
}


void draw(){
  background(30);
  
  
  switch (state) {
  case 0:
  imageMode(CORNER);
    image(startScreenImg, 0, 0);
  fill(0);
  textSize(17);
  text("use W, A, S, D to move", 420, 460);
  text("press the space bar to pick up croissants and earn points", 290, 480);
  text("avoid the cars!", 445, 510);
 
    
    

    break;
  case 1:
  imageMode(CORNER);
  image(cobblestone, 0, 0);
  
  //player functions
  p1.render();
  p1.move();
  
  //croissant functions
  pi1.render();
  pi21.render();
  pi31.render();
 
  //car functions
  c1.render();
  c1.moveCar();
  
  c21.render();
  c21.moveCar();
  

  //reverse car functions
  rc1.render();
  rc1.moveCar();
  
  rc21.render();
  rc21.moveCar();
  
  
  //score function
  drawScore(pScore, pScoreX, pScoreY, pColor);
  
  //take croissant
  noCroissant1();

fill(255);
textSize(20);
text("SCORE", pScoreX - 60, pScoreY);

  
    //check car crash boolean
  if (c1.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  
  if (c21.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (rc1.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (rc21.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  //for loop to go through everything in obstacleList
  for (Obstacle anObstacle : obstacleList){
       anObstacle.render();
       anObstacle.playerCollide(p1);
  }
  
  if (p1.isMovingRight == true || p1.isMovingLeft == true || p1.isMovingUp == true || p1.isMovingDown == true){
      if (!walkinggSound.isPlaying() ) {
      walkinggSound.play();
  }
  else {
      if (walkinggSound.isPlaying()) {
          walkinggSound.pause();
      }
  }
  
  //background song
  if (!parisianSong.isPlaying() ) {
      parisianSong.play();
  }
  }
  break;
  
  case 2:
  imageMode(CORNER);
  image(cobblestone, 0, 0);
  
  //player functions
  p1.render();
  p1.move();
  
  //croissant functions
  pi2.render();
  pi22.render();
  pi32.render();
  
  //car functions
  c2.render();
  c2.moveCar();
  
  c22.render();
  c22.moveCar();
  
  //reverse car functions
  rc2.render();
  rc2.moveCar();
  
  rc22.render();
  rc22.moveCar();
  
  //score 
  pScoreX = 950;
  pScoreY = 50;
  pColor = color(255);
  
  //score function
  drawScore(pScore, pScoreX, pScoreY, pColor);
  
  //take croissant
  noCroissant2();

fill(255);
textSize(20);
text("SCORE", pScoreX - 60, pScoreY);
  
  
    //check car crash boolean
  if (c2.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (c22.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (rc2.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (rc22.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  //for loop to go through everything in obstacleList
  for (Obstacle anObstacle : obstacleList){
       anObstacle.render();
       anObstacle.playerCollide(p1);
  }
  
  if (p1.isMovingRight == true || p1.isMovingLeft == true || p1.isMovingUp == true || p1.isMovingDown == true){
      if (!walkinggSound.isPlaying() ) {
      walkinggSound.play();
  }
  else {
      if (walkinggSound.isPlaying()) {
          walkinggSound.pause();
      }
  }
  
  //background song
  if (!parisianSong.isPlaying() ) {
      parisianSong.play();
  }
 
 //image(bushImg, width/2, height/2);
  
  }
  break;
 
 case 3:
 imageMode(CORNER);
 image(cobblestone, 0, 0);
  
  //player functions
  p1.render();
  p1.move();
  
 //croissant functions
  pi3.render();
  pi23.render();
  pi33.render();
  
  //car functions
  c3.render();
  c3.moveCar();
  
  c23.render();
  c23.moveCar();
  
  //reverse car functions
  rc3.render();
  rc3.moveCar();
  
  rc23.render();
  rc23.moveCar();
  
  //score 
  pScoreX = 950;
  pScoreY = 50;
  pColor = color(255);
  
  //score function
  drawScore(pScore, pScoreX, pScoreY, pColor);
  
  //take croissant
  noCroissant3();

fill(255);
textSize(20);
text("SCORE", pScoreX - 60, pScoreY);
  
  
    //check car crash boolean
  if (c3.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (c23.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (rc3.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  if (rc23.carCollide(p1) ){
       p1.x = 500;
       p1.y = 750;
       state = 5;
       text(pScore, 500, 475);
       text("SCORE", 400, 475);
  }
  
  //for loop to go through everything in obstacleList
  for (Obstacle anObstacle : obstacleList){
       anObstacle.render();
       anObstacle.playerCollide(p1);
  }
  
  if (p1.isMovingRight == true || p1.isMovingLeft == true || p1.isMovingUp == true || p1.isMovingDown == true){
      if (!walkinggSound.isPlaying() ) {
      walkinggSound.play();
  }
  else {
      if (walkinggSound.isPlaying()) {
          walkinggSound.pause();
      }
  }
  
  //background song
  if (!parisianSong.isPlaying() ) {
      parisianSong.play();
      }
      
  if (parisianSong.isPlaying() == false){
    parisianSong.play();
  }
  }
  
  break;
  
  case 4:
  playerWinScreen();
  background(200, 80, 100);
  fill(255);
  imageMode(CORNER);
  image(winScreenImg, 0, 0);
  text(pScore, 520, 475);
  text("SCORE", 450, 475);
  
  break;
  
  case 5:
  playerLoseScreen();
  background(200, 80, 100);
  fill(255);
  imageMode(CORNER);
  image(loseScreenImg, 0, 0);
  text(pScore, 520, 475);
  text("SCORE", 450, 475);
  
  
  break;
  }
}

void keyPressed(){
  if (key == 'a'){
    p1.isMovingLeft = true;
    marieAnimation.isAnimating  = true;
  }

  if (key == 'd'){
    p1.isMovingRight = true;
   marieAnimation.isAnimating  = true;
  }
  
  if (key == 'w'){
    p1.isMovingUp = true;
    marieAnimation.isAnimating  = true;
  }
  
  if (key == 's'){
    p1.isMovingDown = true;
   marieAnimation.isAnimating  = true;
  }
  
//croissant collision if statements for points
  if (key == ' ' &&
      pi1.pickupCollide (p1) ){
    pScore += 50;
    noCroissant = true;
  }
  
  if (key == ' ' &&
      pi21.pickupCollide (p1) ){
    pScore += 50;
  }
  
  if (key == ' ' &&
      pi31.pickupCollide (p1) ){
    pScore += 50;
  }

//state if statements 
  if (key == 'm'){
    state = 1;
    pScore = 0;
    pi1.x = 700;
    pi1.y = 300;
    pi21.x = 300;
    pi21.y = 500;
    pi31.x = 500;
    pi31.y = 100;
    pi2.x = 700;
    pi2.y = 300;
    pi22.x = 300;
    pi22.y = 500;
    pi32.x = 500;
    pi32.y = 100;
    pi3.x = 700;
    pi3.y = 300;
    pi23.x = 300;
    pi23.y = 500;
    pi33.x = 500;
    pi33.y = 100;
  }
  
  if (key == 'r'){
    state = 0;
    pScore = 0;
  }
}
 


  
void keyReleased(){
  if (key == 'a'){
    p1.isMovingLeft = false;
   marieAnimation.isAnimating  = false;
  }
  
  if (key == 'd'){
    p1.isMovingRight = false;
   marieAnimation.isAnimating  = false;
  }
  
  if (key == 'w'){
    p1.isMovingUp = false;
    marieAnimation.isAnimating  = false;
  }
  
  if (key == 's'){
    p1.isMovingDown = false;
   marieAnimation.isAnimating  = false;
  }
}

void drawScore(int scoreNumber, int x, int y, color c){
  fill(c);
  textSize(20);
  text(scoreNumber, x, y);
}

void playerWinScreen(){
  if (p1.y < 0 && state == 3){
    state = 4;
  }
}

void playerLoseScreen(){
  if (c1.carCollide(p1) == true){
    state = 5;
   
  }
}
  
 //croissant dissapear function
void noCroissant1(){
     if (pi1.pickupCollide(p1) == true && key == (' ')){
       pi1.x = 2000;
       pi1.y  = 2000;
     }
     if (pi21.pickupCollide(p1) == true && key == (' ')){
       pi21.x = 2000;
       pi21.y  = 2000;
     }
     if (pi31.pickupCollide(p1) == true && key == (' ')){
       pi31.x = 2000;
       pi31.y  = 2000;
     }
}

void noCroissant2(){
     if (pi2.pickupCollide(p1) == true && key == (' ')){
       pi2.x = 2000;
       pi2.y  = 2000;
     }
     if (pi22.pickupCollide(p1) == true && key == (' ')){
       pi22.x = 2000;
       pi22.y  = 2000;
     }
     if (pi32.pickupCollide(p1) == true && key == (' ')){
       pi32.x = 2000;
       pi32.y  = 2000;
     }
}

void noCroissant3(){
     if (pi3.pickupCollide(p1) == true && key == (' ')){
       pi3.x = 2000;
       pi3.y  = 2000;
     }
     if (pi23.pickupCollide(p1) == true && key == (' ')){
       pi23.x = 2000;
       pi23.y  = 2000;
     }
     if (pi33.pickupCollide(p1) == true && key == (' ')){
       pi33.x = 2000;
       pi33.y  = 2000;
     }
   }





 
