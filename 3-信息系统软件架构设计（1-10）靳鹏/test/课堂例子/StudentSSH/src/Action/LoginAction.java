package Action;

import Model.Student;

import com.opensymphony.xwork2.Action;

public class LoginAction implements Action {
    
	private String name;
	private String pwd;
	
	private Student std; 
	
	
	public Student getStd() {
		return std;
	}



	public void setStd(Student std) {
		this.std = std;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		if((std.getName().equals("admin"))&&(std.getPwd().equals("123456")))
			return "good";
		else
			return "bad";
	}

}
