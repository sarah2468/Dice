int numDots;
void setup()
{
    size(500, 500);
    noLoop();
}
void draw()
{
    
    //your code here
    background(#0FD2DB);
    for(int y = 0; y < 400; y = y + 100){
          for(int x = 0; x < 500; x = x + 100){
            Die dice = new Die(x, y);
            dice.show();
          }
        }
        fill(#FCFCFC);
        textSize(30);
        text("Sum of Dots: " + numDots, 20, 450);
        strokeWeight(5);
        stroke(#FFFCFC);
        line(20, 470, 480, 470);
 }
 
 
void mousePressed()
{
    numDots = 0;
    redraw();
}
class Die //models one single dice cube
{
    //variable declarations here
    int myX, myY;
    Die(int x, int y) //constructor
    {
        //variable initializations here
        myX = x;
        myY = y;
    }
    void roll()
    {
        fill(#050505);
        //your code here

        int spots = (int)(Math.random()*6+1);
        if(spots == 1){
          ellipse(myX+50, myY+50, 5, 5);
          numDots = numDots + 1;
        }
        else if(spots == 2){
          ellipse(myX+40, myY+40, 5, 5);
          ellipse(myX+60, myY+60, 5, 5);
          numDots = numDots + 2;
        }
        else if(spots == 3){
          ellipse(myX+40, myY+35, 5, 5);
          ellipse(myX+50, myY+50, 5, 5);
          ellipse(myX+60, myY+65, 5, 5);
          numDots = numDots + 3;
        }
        else if(spots == 4){
          ellipse(myX+40, myY+40, 5, 5);
          ellipse(myX+60, myY+60, 5, 5);
          ellipse(myX+60, myY+40, 5, 5);
          ellipse(myX+40, myY+60, 5, 5);
          numDots = numDots + 4;
        }
        else if(spots == 5){
          ellipse(myX+40, myY+40, 5, 5);
          ellipse(myX+60, myY+60, 5, 5);
          ellipse(myX+60, myY+40, 5, 5);
          ellipse(myX+40, myY+60, 5, 5);
          ellipse(myX+50, myY+50, 5, 5);
          numDots = numDots + 5;
        }
        else if(spots == 6){
          ellipse(myX+40, myY+35, 5, 5);
          ellipse(myX+40, myY+50, 5, 5);
          ellipse(myX+40, myY+65, 5, 5);
          ellipse(myX+60, myY+35, 5, 5);
          ellipse(myX+60, myY+50, 5, 5);
          ellipse(myX+60, myY+65, 5, 5);
          numDots = numDots + 6;
        }
    
    }
    void show()
    {
        //your code here
        noStroke();
        fill(#D6D6D6);
        rect(myX+20, myY+20, 50, 50, 8);
        fill(#FFFFFF);
        rect(myX+25, myY+25, 50, 50, 8);
        roll();
    }
}