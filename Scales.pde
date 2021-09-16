void setup(){
  size(1000,1000);
  noLoop();
}

void draw(){
  for(int y = 1000; y > -100; y-=20){
    for(int x = 1000; x > -100; x-=13){
      scale(x,y);
    }
  }
}

void scale(int x, int y){
  int r= (int)(Math.random()*255);
  int g= (int)(Math.random()*255);
  int b= (int)(Math.random()*255);
  if ((x > 400 && x < 600)&&(y > 400 && y < 600)){
    fill(253,184,19);
  }
  else if (x%5 == 0){
    fill(r,0,0);
  }
  else if (x%2 == 0){
    fill(0,g,0);
  }
  else if (x%3 == 0){
    fill(0,0,b);
  }
  else if (x%7 == 0){
    fill(r,g,0);
  }
  else if (x%11 == 0){
    fill(r,0,b);
  }
  else if (x%13 == 0){
    fill(0,g,b);
  }

  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+40,y+50);
  curveVertex(x+80,y);
  curveVertex(x+80,y);
  endShape();
}
