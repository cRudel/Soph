public class PuzzleSolver
{
    public static void main(String[] args)
    {
	
    }
}

class Square
{
    private String top;
    private String right;
    private String bottom;
    private String left;

    public Square(String t, String r, String b, String l)
    {
	this.top=t;
	this.right=r;
	this.bottom=b;
	this.left=l;
    }

    public void rotateR()
    {
	String t=this.top;
	String r=this.right;
	String b=this.bottom;
	this.top=this.left;
	this.right=t;
	this.bottom=r;
	this.left=b;
	return;
    } 
    public void rotateL()
    {
	String t=this.top;
	String r=this.right;
	String b=this.bottom;
	this.bottom=this.left;
	this.right=b;
	this.top=r;
	this.left=t;
	return;
    }
   
    /*Getters below, setters aren't really necessary */

    public String getTop()
    {
	return this.top;
    }

    public String getRight()
    {
	return this.right;
    }
    public String getBottom()
    {
	return this.bottom;
    }
    public String getLeft()
    {
	return this.left;
    }



}
