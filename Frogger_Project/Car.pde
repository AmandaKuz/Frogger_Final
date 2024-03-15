class Obstacle extends Rectangle{
  float speed;
  
  Obstacle(float x, float y, float w, float h, float s){
    super(x, y, w, h);
    speed = s;
  }
  
  //void update(){
  //  x = x + speed;
  //  if(speed > 0 && x > width+grid){
  //    x = -w-grid;
  //  }else if(speed < 0 && x < -w-grid){
  //    x = width+grid;
  //  }
  //}
  
  void update(){
    x += speed;
    if(speed > 0 && x > width){
      x = - w;
    } else if(speed < 0 && x < -w){
      x = width + w;
    }
  }
  
  void show(){
    fill(169,164,52);
    //println(x,y,w,h);
    rect(x, y, w, h);
  }
}
