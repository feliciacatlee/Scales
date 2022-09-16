void setup() {
  size(1000, 1000);
}
void draw() {
  leaf(200, 200);
}

void leaf(int x, int y){
  background(#4D2E1E);
  //fill(#83AD38);
  stroke(#5E831B);
  
  int r = 94 + (int)(Math.random()*36);
  int g = 131 + (int)(Math.random()*36);
  int l = 27 + (int)(Math.random()*36);
  fill(r,g,l,20);
  
  boolean shift = true;
  for(int b = 10; b <= 950; b += 180) { // b = y
    for(int a = -200; a <= 950; a += 150) { // a = x
      if(shift == true){
        bezier(a+200, b, a+80, b+230, a+280, b+100, a+400, b+200);
        bezier(a+200, b, a+430, b-120, a+300, b+130, a+400, b+200);
      }
      else{
        bezier(a, b, a-120, b+230, a+80, b+100, a+200, b+200);
        bezier(a, b, a+230, b-120, a+100, b+130, a+200, b+200);
      }
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
  System.out.println(mouseX + ", " + mouseY);
}

//        bezier(50, 50, -70, 280, 130, 150, 250, 250);
//        bezier(50, 50, 280, -70, 150, 130, 250, 250);
