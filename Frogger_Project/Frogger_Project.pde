Frog frog;
Lane[] lanes;

int SAFETY = 0;
int CAR = 1;
int LOG = 2;

float grid = 50;

void resetGame(){
  frog = new Frog(width/2-grid/2, height-grid, grid);
  frog.attach(null);
}

void setup(){
  size(500, 550);
  resetGame();
  
  int totalLanes = int(height / grid);
  lanes = new Lane[totalLanes];
  
  lanes[0] = new Lane(0, color(113,20,181));
  lanes[1] = new Lane(1, LOG, 3, 1, 150, 3, color(51,153,255));
  lanes[2] = new Lane(2, LOG, 2, 3, 350, -2.5, color(51,153,255));
  lanes[3] = new Lane(3, LOG, 4, 1, 200, 1, color(51,153,255));
  lanes[4] = new Lane(4, LOG, 3, 2, 250, -1.7, color(51,153,255));
  lanes[5] = new Lane(5, color(113,20,181));
  lanes[6] = new Lane(6, CAR, 3, 1, 150, 2.4, color(0));
  lanes[7] = new Lane(7, CAR, 2, 2, 150, -3.6, color(0));
  lanes[8] = new Lane(8, CAR, 1, 3, 150, 2.3, color(0));
  lanes[9] = new Lane(9, CAR, 4, 1, 150, -1, color(0));
  lanes[10] = new Lane(10, color(113,20,181));
}

void draw(){
  background(0);
  
  for(Lane lane : lanes){
    lane.run();
  }
  
  int laneIndex = int(frog.y / grid);
  lanes[laneIndex].check(frog);
  
  frog.update();
  frog.show();
}

void keyPressed(){
  if(keyCode == UP){
    frog.move(0, -1);
  }else if(keyCode == DOWN){
    frog.move(0, 1);
  }else if(keyCode == RIGHT){
    frog.move(1, 0);
  }else if(keyCode == LEFT){
    frog.move(-1, 0);
  }
}
