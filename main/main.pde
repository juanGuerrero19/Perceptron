Perceptron p;

Point[] points = new Point[100];


void setup(){
  size(500,500);
  p = new Perceptron();
  
  for (int i = 0; i < points.length; i++){
    points[i] = new Point();
  }
  
  
  float[] inputs = {-1,0.5};
  int guess = p.guess(inputs);
  println(guess);
}


void draw(){
  background(255);
  stroke(0);
  line(0,0,width,height);
  for (Point po : points){
    po.show();
  }
  
  for (Point po : points){
    float [] inputs = {po.x, po.y};
    int target = po.label;
    p.train(inputs, target);
    
    int guess = p.guess(inputs);
    if (guess == target){
      fill(0,255,0);
    }else{
      fill(255,0,0);
    }
    noStroke();
    ellipse(po.x,po.y,4,4);
  } 
}