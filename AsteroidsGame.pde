Spaceship masa = new Spaceship();
Star[] universe = new Star[200];
ArrayList <Asteroid> fireball = new ArrayList <Asteroid>();

public void setup() 
{
  //initialization
  size(500,500);
  for(int i = 0; i < universe.length; i++)
  {
    universe[i] = new Star();
  }
  
  for(int i = 0; i < 10; i++)  //uses arraylist
  {
    fireball.add(new Asteroid());
  }
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
    for(int i=0; i < fireball.size(); i++){
      fireball.get(i).show();
      fireball.get(i).move();
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
