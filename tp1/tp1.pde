PImage img;
void setup(){
  size(800,400);
  background(255);
  img = loadImage("planetario.jpg");
}
void draw(){
  background(87, 142, 196);
  image(img, 0, 0);
  fill(0);
  textSize(20);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
  println(mouseX + " - " + mouseY);
  
  //piso
  noStroke();
  fill(213, 211, 198);
  rect(400, 335, 400, 70);
  
  fill(173, 173, 173);
  ellipse(600, 190, 200, 200);
  fill(201, 201, 201);
  rect(439, 200, 322, 50);
  ellipse(600, 220, 350, 100);
  fill(87, 142, 196);
  rect(400, 195, 39, 50);
  rect(761, 195, 39, 50);
  fill(173, 173, 173);
  ellipse(600, 250, 322, 45);
  fill(201, 201, 201);
  quad(505, 245, 571, 292, 634, 292,698, 245);
}
