package ch04.com.dao;

public class Circle {
	private double radius = 0.0;
	
	public double getRadius(double i) {
		this.radius = i;
		return radius;
	}
	
	public double getPerimeter() {
		return radius*2*Math.PI;
	}
	
	public double getArea() {
		return radius*radius*Math.PI;
	}
}
