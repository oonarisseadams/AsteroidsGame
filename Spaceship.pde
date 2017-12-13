class Spaceship extends Floater  
{   
  public Spaceship() 
  {
    corners = 13;
    //creating spaceship shape
    int[] xT = {-8, -3, 6, 8, 11, 8, 6, -3, -8, -5, -7, -7, -5};
    int[] yT = {8, 8, 2, 2, 0, -2, -2, -8, -8, -3, -1, 1, 3};
    xCorners = xT;
    yCorners = yT;
    myColor = color(255,255,255);
    myCenterX = myCenterY = 250;
    myDirectionX = myDirectionY = 0;
    myPointDirection = 0;
  }
  
  //Center X
  public void setX(int x) {myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  
  //Center Y
  public void setY(int y) {myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  
  //Direction X
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return (double)myDirectionX;}
  
  //Direction Y
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return (double)myDirectionY;}
  
  //Point Direction
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return (double)myPointDirection;}
  
}
