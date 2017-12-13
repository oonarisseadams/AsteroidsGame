class Asteroid extends Floater
{
  private int asteroidGD;
  private int speedRotation;
  
  public Asteroid() 
  {
    //making rotaton speed with equal +/- probability
    //speedRotation = (int)(Math.random()*9)-4;
    speedRotation = (int)(Math.random()*2)-1;
    myColor = color(102, 30, 0);
    myDirectionX = (int)(Math.random()*8)-5;
    myDirectionY = (int)(Math.random()*8)-5;
    myPointDirection = (Math.random()*360);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    
    //asteroid type: giant vs dwarf
    asteroidGD = (int)(Math.random()*2)+1;
    if(asteroidGD == 1){
      corners = 15;
      //creating spaceship shape
      int[] xHit = {28, 34, 22, 0, -8, -22, -30, -34, -28, -24, -12, -4, 6, 22, 36};
      int[] yHit = {6, 24, 32, 34, 36, 34, 22, 4, -8, -18, -32, -28, -32, -22, -2};
      xCorners = xHit;
      yCorners = yHit;
    }
    else{
      corners = 6;
      int[] xHit = {-12,-8,8,12,8,-8};
      int[] yHit = {0,8,8,0,-8,-8}; 
       xCorners = xHit;
      yCorners = yHit;
    }  
  }


public void move(){
  rotate(speedRotation);
  super.move();
}


  //Center X
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  
  //Center Y
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  
  //Direction X
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return (double)myDirectionX;}

  //Direction Y
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return (double)myDirectionY;}

  //Point Direction
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return (double)myPointDirection;}
}
