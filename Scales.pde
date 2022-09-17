void setup() {
  size(1000, 1000);
  scales();
}

void scale(int x, int y) {

  int r, g, l;

  r = 94 + (int)(Math.random()*36);
  g = 131 + (int)(Math.random()*36);
  l = 27 + (int)(Math.random()*36);

  fill(r, g, l);
  bezier(x, y, x-120, y+230, x+80, y+100, x+200, y+200);
  bezier(x, y, x+230, y-120, x+100, y+130, x+200, y+200);

}

void scales() {
  background(#4D2E1E);
  fill(#83AD38);
  stroke(#5E831B);

  boolean shift = true;

  for (int y = 10; y <= 950; y += 180) {
    for (int x = -200; x <= 950; x += 150) {
      if (shift)
        scale(x+200, y);
      else
        scale(x, y);
    }
    shift = !shift;
  }
  System.out.println(mouseX + ", " + mouseY);
}


//        original shape
//        bezier(50, 50, -70, 280, 130, 150, 250, 250);
//        bezier(50, 50, 280, -70, 150, 130, 250, 250);
