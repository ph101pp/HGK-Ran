class ElementMouse extends CollisionElement{
////////////////////////////////////////////////////////////////////////////////
	public ElementMouse(){	
		location = new PVector (mouseX, mouseY);
		actionRadius= 100;
	}
////////////////////////////////////////////////////////////////////////////////
	public void collision(CollisionElement element, CollisionMap collisionMap, boolean mainCollision) {}
////////////////////////////////////////////////////////////////////////////////
	void draw() {
		location = new PVector (mouseX, mouseY);
	}
////////////////////////////////////////////////////////////////////////////////
}
