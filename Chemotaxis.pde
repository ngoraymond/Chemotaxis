 //declare bacteria variables here   
 Bacteria [] harambe;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(1280,720);
 	harambe = new Bacteria[1000];
 	for(int i = 0;i<harambe.length;i++)
 	{
	harambe[i] = new Bacteria();
	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(255);
 	noFill();
 	if(mousePressed==false){
 		stroke(0);
 		rect(mouseX-50,mouseY-50,100,100); 
 	} else{
 		stroke(255,0,0);
 		line(mouseX-25,mouseY-25,mouseX+25,mouseY+25);
 		line(mouseX+25,mouseY-25,mouseX-25,mouseY+25);
 		rect(mouseX-50,mouseY-50,100,100);
	}
 	

	//array 
 	for(int i = 0; i<harambe.length;i++)
 	{
	harambe[i].move();
	harambe[i].show();
	//acceleration
	if(mousePressed==true)
		{
    		harambe[i].left=3;
    		harambe[i].right=6;
    		if(harambe[i].alb<0){
    			harambe[i].alb=0;
    		} 
    		else
    		{
    			harambe[i].alb+=0.2;
    		}
    		
    	}
    	else{
    		harambe[i].left=6;
    		harambe[i].right=3;
    		if(harambe[i].myX>mouseX-50 && harambe[i].myX<mouseX+50 )
    		{
    			if(harambe[i].myY>mouseY-50 && harambe[i].myY<mouseY+50 )
    			{
    				harambe[i].alb=0;
    			} 
    			else 
    			{
    				harambe[i].alb-=0.2;
    			}
    		}
    		else
    		{
    			harambe[i].alb-=0.2;
    		}
    	}
	}

	

 }  
 class Bacteria    
 {     
 	//lots of java!   
 	float myX,myY, myColor;
 	float right;
    float left;
    float alb;
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
 		right=3;
 		left=6;
 		alb=0;
 		
 	}
 	void show()
 	{	
 		if(myX>width/2&&myY<=height/2)
 		{
 			fill(0,myColor,0);
		} 
		else if(myX>width/2&&myY>height/2)
		{
			fill(myColor,myColor,0);
		}
		else if(myX<=width/2&&myY>height/2)
		{
			fill(0,0,myColor);
		}
 		else 
 		{
 			fill(myColor,0,0);
		}
		
 		ellipse(myX,myY,15,15);

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
    		myY+=((int)(Math.random()*9)-alb)-right;
    	}
    	else{
    		myY+=((int)(Math.random()*9)+alb)-left;
    	}
    	if(myX<mouseX){
    		myX+=((int)(Math.random()*9)-alb)-right;
    	}
    	else{
    		myX+=((int)(Math.random()*9)+alb)-left;
    	}
    	
    	

 	}
 	
 } 

 class Apple{
 	int aX,aY;
 	Apple(int x, int y)
 	{
 		aX=x;
 		aY=y;
 	}
 	void show()
 	{
 		ellipse(aX,aY,20,20);
 	}
 }



 