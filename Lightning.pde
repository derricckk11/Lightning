
void draw()
{
  strokeWeight(2);
  cloud1(350, 70);
  cloud2(470, 120);
  cloud3(256, 105);

  fill(0,0,0,10); //makes it fade out
  rect(0,0,800,800);
  
  benjaminFranklinAndKite(400, 540);


  //make the clouds constantly move back and forth using math.random to change the X/Y coordinate

  //for(int i = 0; i <= 10; i += 2) {
  //   if((int) (Math.random()*2) == 1) {

  //     x -= 2;

  //   }
  // }                                          - come back to this idea at a later time - and put it under one of the cloud functions


  //maybe use math.random to change the colors of it





  //this code draws one whole bolt of lightning

  //I am creating a limit for where I want the lightning to come from
  if (startX < 267 || startX > 533) { 

    startX = 267 + (int)(Math.random() * 267); //adds the minimum + a chance to reach the maximum X coordinate
  }

  //fill((int)(Math.random()), (int)(Math.random()), (int)(Math.random())); 
  
  int strokeWeight = (int)(Math.random() * 6 + 2); 
  strokeWeight(strokeWeight);
  stroke((int)(Math.random() * 255), ((int)(Math.random() * 255)), ((int)(Math.random() * 255)));
  
  if(strokeWeight >= 2) {
  
    strokeWeight -= .5;
  
  }
  
  


  while (endX <= 800 && endX >= 0) {

    endX = startX + (int)(((Math.random()*18) -9)); //horizontal
    endY = startY + (int)((Math.random()*9)); // vertical

    //endX = startX + (int)(Math.random()*9); //vertical
    //endY = startY + (int)((Math.random()*18) -9); // horizontal
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

