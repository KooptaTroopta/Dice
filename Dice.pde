Die hi;
int holabolasummationofdice = 0;
void setup()
{
  size(1000,1200);
  noLoop();
  noStroke();
}
void draw()
{
  background(255);
  for (int i = 10; i <= 1000; i+=20) {
    for (int j = 10; j <= 1000; j+=20) {
      hi = new Die(i,j);
      hi.show();
      hi.roll();
    }
  }
  fill(0);
  textSize(50);
  text("Total: " + holabolasummationofdice, 400, 500);
}
void mousePressed()
{
  holabolasummationofdice = 0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int X, Y;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    X = x;
    Y = y;
  }
  void roll()
  {
    int rol = (int)(Math.random()*6+1);
    fill(255);
    if (rol == 1) {
      ellipse(X,Y,5,5);
    }
    else if (rol == 2) {
      ellipse(X,Y+5,5,5);
      ellipse(X,Y-5,5,5);
    }
    else if (rol == 3) {
      ellipse(X-5,Y-5,5,5);
      ellipse(X,Y,5,5);
      ellipse(X+5,Y+5,5,5);
    }
    else if (rol == 4) {
      ellipse(X+5,Y+5,5,5);
      ellipse(X+5,Y-5,5,5);
      ellipse(X-5,Y+5,5,5);
      ellipse(X-5,Y-5,5,5);
    }  
    else if (rol == 5) {
      ellipse(X+5,Y+5,5,5);
      ellipse(X+5,Y-5,5,5);
      ellipse(X-5,Y+5,5,5);
      ellipse(X-5,Y-5,5,5);
      ellipse(X,Y,5,5);
    } else {
      ellipse(X+5,Y+5,5,5);
      ellipse(X+5,Y-5,5,5);
      ellipse(X-5,Y+5,5,5);
      ellipse(X-5,Y-5,5,5);
      ellipse(X-5,Y,5,5);
      ellipse(X+5,Y,5,5);
    }
    holabolasummationofdice+=rol;
  }
  void show()
  {
    if (Math.random() < 0.1666667)
    fill(#9ea1d4);
    else if (Math.random() < 0.2)
    fill(#c6e2e9);
    else if (Math.random() < 0.25)
    fill(#adf7b6);
    else if (Math.random() < 0.3333333)
    fill(#ffcaaf);
    else if (Math.random() < 0.5)
    fill(#ffee93);
    else
    fill(#ffb3c6);
    rect(X-10,Y-10,20,20,3);
  }
}
