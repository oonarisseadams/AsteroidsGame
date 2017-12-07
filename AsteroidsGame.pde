Spaceship masa;
Star[] universe = new Star[200];

public void setup() 
{
  //initialization
  size(500,500);
  for(int i = 0; i < universe.length; i++)
  {
    universe[i] = new Star();
  }
  masa = new Spaceship();
}

public void draw() 
{
    background(0);
    masa.show();
    masa.move();
    for(int i = 0; i < universe.length; i++)
    {
      universe[i].show();
    }
}

public void keyPressed(){
  //hyperspace
  if(key == ' ')
  {
    int randoMoveA = (int)(Math.random()*400);
    int randoMoveB = (int)(Math.random()*400);
    int randoAngleC = (int)(Math.random()*360);
    masa.setDirectionX(0);
    masa.setDirectionY(0);
    masa.setX(randoMoveA);
    masa.setY(randoMoveB);
    masa.rotate(randoAngleC);
  }
  //turn clockwise
  if(key == 'r')
  {
    masa.rotate(20);
  }
  //turn counterclockwise 
  if(key == 'l')
  {
    masa.rotate(-20);
  }
  if(key == 'a')
  {
    masa.accelerate(10);
  }
  if(key == 's')
  {
    masa.setDirectionX(0);
    masa.setDirectionY(0);
  }
}
