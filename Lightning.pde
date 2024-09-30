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


void draw()
{
  strokeWeight(2);
  cloud1(350, 70);
  cloud2(470, 120);
  cloud3(256, 105);

  fill(0, 0, 0, 10); //makes it fade out
  //rect(0, 0, 800, 800);

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

  if (strokeWeight >= 2) {

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

void mousePressed() {

  //this code brings it back to the source of lightning. 
  startX = (int)(Math.random() * 800);
  startY = 70;
  endX = (int)(Math.random() * 800);
  endY = 800;



  //use no loop and redraw to get it to incrememnt.
}

void cloud1(int x, int y) {

  fill(47, 50, 53); //maybe make this more grey later on

  stroke(1);

  ellipse(x - 30, y - 50, 70, 50); //top circle
  ellipse(x - 60, y - 40, 50, 35); //circle to the left of the top circle - left circle1
  ellipse(x - 90, y - 23, 37, 30); //circle next to left circle1 - left circle2

  ellipse(x + 30, y - 45, 75, 40 ); //circle to the right of the top circle - right circle1

  ellipse(x + 75, y - 25, 50, 40 ); //circle to the right of right circle1 - right circle2

  ellipse(x - 100, y + 15, 75, 40 ); //bottom circle1
  ellipse(x - 65, y + 30, 55, 30 ); //bottom circle2
  ellipse(x + 100, y + 12, 75, 40 ); //bottom circle3

  noStroke();

  ellipse(x, y, 250, 100); //the main cloud shape
}


void cloud2(int x, int y) {

  stroke(2);

  fill(47, 53, 40); //maybe make this more grey later on


  ellipse(x - 30, y - 50, 70, 50); //top circle
  ellipse(x - 60, y - 40, 50, 35); //circle to the left of the top circle - left circle1
  ellipse(x - 90, y - 23, 37, 30); //circle next to left circle1 - left circle2

  ellipse(x + 30, y - 45, 75, 40 ); //circle to the right of the top circle - right circle1

  ellipse(x + 75, y - 25, 50, 40 ); //circle to the right of right circle1 - right circle2

  ellipse(x - 100, y + 15, 75, 40 ); //bottom circle1
  ellipse(x - 65, y + 30, 55, 30 ); //bottom circle2
  ellipse(x + 100, y + 12, 75, 40 ); //bottom circle3

  noStroke();
  ellipse(x, y, 250, 100); //the main cloud shape
}



void cloud3(int x, int y) {

  stroke(2);

  fill(169, 169, 169); //maybe make this more grey later on


  ellipse(x - 30, y - 50, 70, 50); //top circle
  ellipse(x - 60, y - 40, 50, 35); //circle to the left of the top circle - left circle1
  ellipse(x - 90, y - 23, 37, 30); //circle next to left circle1 - left circle2

  ellipse(x + 30, y - 45, 75, 40 ); //circle to the right of the top circle - right circle1

  ellipse(x + 75, y - 25, 50, 40 ); //circle to the right of right circle1 - right circle2

  ellipse(x - 100, y + 15, 75, 40 ); //bottom circle1
  ellipse(x - 65, y + 30, 55, 30 ); //bottom circle2
  ellipse(x + 100, y + 12, 75, 40 ); //bottom circle3

  noStroke();
  ellipse(x, y, 250, 100); //the main cloud shape
}


void benjaminFranklinAndKite(int x, int y) {
  strokeWeight(1);

  stroke(255);
  line(x, y + 25, x - 50, y + 200); //string


  stroke(0);
  fill(255, 0, 0);

  triangle(x, y, x, y + 25, x + 75, y + 25); //top back triangle
  triangle(x, y + 25, x, y + 50, x + 75, y + 25); //bottom back triangle

  triangle(x - 25, y + 25, x, y, x, y + 25); //top back triangle
  triangle(x - 25, y + 25, x, y + 50, x, y + 25); //bottom back triangle - left, bottom, middle joint


  fill(85, 79, 72);  
  ellipse(x - 80, y + 190, 30, 30); //head
  fill(98, 101, 104);
  ellipse(x - 80, y + 230, 40, 55); //body
  ellipse(x - 75, y + 253, 20, 15); //foot
  ellipse(x - 85, y + 253, 18, 15); //foot

  int eyeSize = 7;
  int mouthX = 10;
  int mouthY = 7;


  fill(0);
  ellipse(x - 84, y + 185, eyeSize, eyeSize); //left eye
  ellipse(x - 78, y + 185, eyeSize, eyeSize); //right eye


  fill(105, 105, 105);
  ellipse(x - 76, y + 196, mouthX, mouthY); //mouth


  line(x - 82, y + 207, x - 82, y + 246); //line for his vest
  line(x - 97, y + 237, x - 63, y + 237);//line for his pants


  //gold buttons
  fill(255, 233, 0);
  ellipse(x - 78, y + 220, 3, 3);

  ellipse(x - 78, y + 226, 3, 3);

  ellipse(x - 78, y + 232, 3, 3);

  strokeWeight(5);
  stroke(85, 79, 72);
  line(x - 70, y + 220, x - 50, y + 200);

  stroke(255);
  strokeWeight(1);
  fill(150, 75, 0);

  //house
  triangle(650, 650, 590, 700, 710, 700);
  rect(600, 700, 100, 100);
  rect(620, 750, 40, 60); 

  //tree

  rect(30, 770, 20, 30);

  fill(95, 133, 117);
  triangle(40, 740, 20, 790, 60, 790);

  triangle(40, 710, 20, 760, 60, 760);

  triangle(40, 690, 20, 730, 60, 730);

  triangle(40, 660, 20, 700, 60, 700);



  //tree 2

  fill(150, 75, 0);

  rect(50, 770, 20, 30);

  fill(0, 163, 108);

  triangle(60, 740, 40, 790, 80, 790);

  triangle(60, 710, 40, 760, 80, 760);

  triangle(60, 690, 40, 730, 80, 730);

  triangle(60, 660, 40, 700, 80, 700);


  //tree 3

  fill(150, 75, 0);

  rect(70, 770, 20, 30);

  fill(53, 94, 59);

  triangle(80, 740, 60, 790, 100, 790);

  triangle(80, 710, 60, 760, 100, 760);

  triangle(80, 690, 60, 730, 100, 730);

  triangle(80, 660, 60, 700, 100, 700);


  //tree 4

  fill(150, 75, 0);

  rect(90, 770, 20, 30);

  fill(79, 121, 66);

  triangle(100, 740, 80, 790, 120, 790);

  triangle(100, 710, 80, 760, 120, 760);

  triangle(100, 690, 80, 730, 120, 730);

  triangle(100, 660, 80, 700, 120, 700);


  //tree 5

  fill(150, 75, 0);

  rect(110, 770, 20, 30);

  fill(34, 139, 34);

  triangle(120, 740, 100, 790, 140, 790);

  triangle(120, 710, 100, 760, 140, 760);

  triangle(120, 690, 100, 730, 140, 730);

  triangle(120, 660, 100, 700, 140, 700);
}
