package util;

public class Tuple {
    private final Object x;
    private final Object y;
    public Tuple(Object x, Object y) {
        this.x = x;
        this.y = y;
    }
    public Object getX(){ return this.x; }
    public Object getY(){ return this.y; }
}
