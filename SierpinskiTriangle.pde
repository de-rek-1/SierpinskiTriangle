int minSize = 20;

public void setup()
{
  size(600, 600);
  background(255);
  noStroke();
  fill(0);
}
public void draw()
{
  background(255);
  sierpinski(50, 550, 500);
}

public void mouseDragged()
{
  minSize = max(5, mouseX / 10);
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= minSize)
  {
    triangle(x, y,x + len, y, x + len / 2, y - len);
  }
  else{
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}
