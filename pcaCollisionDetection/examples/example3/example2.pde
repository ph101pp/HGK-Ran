import pcaCollisionDetection.*;
import java.awt.Color;
////////////////////////////////////////////////////////////////////////////////
CollisionDetection 					collisionDetection;
ArrayList<CollisionElement> 		circles = new ArrayList<CollisionElement>();
int									circleCount=5;
ElementCircle						circle;
ElementMouse						mouse = new ElementMouse();
boolean								collision=false;
boolean								removeElement=false;
////////////////////////////////////////////////////////////////////////////////
void setup() {
	size(800,600);
	noStroke();
	ellipseMode(CENTER);
	rectMode(CENTER);
	
	collisionDetection = new CollisionDetection(this);
}
////////////////////////////////////////////////////////////////////////////////
void draw(){
	collision=false;
	background(255);

	collisionDetection.testElement(mouse);

	for(int i=0; i<circles.size(); i++) {
		circle= (ElementCircle) circles.get(i);
		circle.draw();
	}
	mouse.draw();
}
////////////////////////////////////////////////////////////////////////////////
void mouseReleased() {
	if(collision) {
		removeElement=true;
		collisionDetection.testElement(mouse);
		removeElement=false;
	}
	else {
		circle=new ElementCircle(this);
		circles.add(circle);
		collisionDetection.add(circle);
	}
}