package cn.edu.zust.bean.jsp;

public class CircleBean {
    private double r;
    private double area;
    private double length;

    public CircleBean() {
        this.r = 0;
        this.area = 0;
        this.length = 0;
    }

    public double getR() { return r; }

    public void setR(double r) { this.r = r; }

    public double getArea() { return area; }

    public void setArea(double area) { this.area = area; }

    public double getLength() { return length; }

    public void setLength(double length) { this.length = length; }

    public void circleBean() {
        this.length = 2 * Math.PI * this.r;
        this.area = Math.PI * this.r * this.r;
    }
}
