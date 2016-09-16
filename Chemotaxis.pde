 //declare bacteria variables here   
 Bacteria [] harambe;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	harambe = new Bacteria[10000];
 	for(int i = 0;i<harambe.length;i++)
 	{
	harambe[i] = new Bacteria();
	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(255);  
 	for(int i = 0; i<harambe.length;i++)
 	{
	harambe[i].move();
	harambe[i].show();
	
	}

 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myX,myY, myColor;
 	/*
 	PVector location;
  	PVector velocity;
  	PVector acceleration;
  	float topspeed;
  	*/
 	Bacteria()
 	{
 		/*
 		location = new PVector(250,250);
 		velocity= new PVector(0,0);
 		topspeed=3;
 		*/
 		myColor=(int)(Math.random()*255);
 		myX=width/2;
 		myY=height/2;
 		
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 		//ellipse(location.x,location.y,10,10);

 	}
 	void move()
 	{
 		/*
 		PVector mouse = new PVector(mouseX,mouseY);
    	PVector acceleration = PVector.sub(mouse,location);
    	acceleration.setMag(0.3);
    	velocity.add(acceleration);
    	velocity.limit(topspeed);
    	location.add(velocity);
    	*/
    	if(myY<mouseY){
    		myY+=(int)(Math.random()*7)-2;
    	}
    	else{
    		myY+=(int)(Math.random()*7)-5;
    	}
    	if(myX<mouseX){
    		myX+=(int)(Math.random()*7)-2;
    	}
    	else{
    		myX+=(int)(Math.random()*7)-5;
    	}
    	

 	}
 	
 }    
 