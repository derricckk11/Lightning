//try to use opacity so that it fades in and out
//this code determines where the lightning is coming from 

int startX = (int)(Math.random() * 800);
int startY = 70;
int endX = (int)(Math.random() * 800);
int endY = 800;



//starts in the middle left of the screen
//int startX = 0;
//int startY = 400; 
//int endX = 0;
//int endY = 800;

//use opacity to make the lightning fade away

void setup()
{
  size(800, 800);
  strokeWeight(2);
  background(98, 101, 104);
  //background(255);
  
  fill(255);
  text(mouseX, 20, mouseX, 80);

text(mouseY, 20, mouseY, 80);
  
}
