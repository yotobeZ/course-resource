package Model;

public class Student implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private String xming;
    private String xbie;
    private String xyuan;
    private String zhye;
    
    public Student(){};
    public Student(String xming,String xbie,String xyuan,String zhye){
    	
    	this.xming = xming;
    	this.xbie = xbie;
    	this.xyuan = xyuan;
    	this.zhye = zhye;
    }
    public String getXming() {
	    return this.xming;
    }

    public void setXming(String xming) {
	    this.xming = xming;
    }

    public String getXbie() {
	    return this.xbie;
    }

    public void setXbie(String xbie) {
	    this.xbie = xbie;
    }

    public String getXyuan() {
	    return this.xyuan;
    }

    public void setXyuan(String xyuan) {
	    this.xyuan = xyuan;
    }

    public String getZhye() {
	    return this.zhye;
    }

    public void setZhye(String zhye) {
	    this.zhye = zhye;
    }

}
