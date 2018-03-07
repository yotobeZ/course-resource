package Model;

public class Student implements java.io.Serializable{
    private String xming;
    private String xbie;
    private String xyuan;
    private String zhye;
    
    
        
    public String getXming() {
		return xming;
	}

    

	public void setXming(String xming) {
		this.xming = xming;
	}



	public String getXbie() {
		return xbie;
	}



	public void setXbie(String xbie) {
		this.xbie = xbie;
	}



	public String getXyuan() {
		return xyuan;
	}



	public void setXyuan(String xyuan) {
		this.xyuan = xyuan;
	}



	public String getZhye() {
		return zhye;
	}



	public void setZhye(String zhye) {
		this.zhye = zhye;
	}



	public Student(){};
    
	public Student(String xming,String xbie,String xyuan,String zhye){
		this.xming = xming;
		this.xbie = xbie;
		this.xyuan = xyuan;
		this.zhye = zhye;
	};
        
	
}
