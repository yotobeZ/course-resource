package Action;
import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import DAO.StdDAO;
import Model.Student;

import com.opensymphony.xwork2.Action;


public class StdAction implements Action {

	private Student std;
	private StdDAO dao;
	private JSONArray result;
	
	private String rslt;
	
	
	
	public JSONArray getResult() {
		return result;
	}

	public void setResult(JSONArray result) {
		this.result = result;
	}

	public Student getStd() {
		return std;
	}

	public void setStd(Student std) {
		this.std = std;
	}


	public StdDAO getDao() {
		return dao;
	}


	public void setDao(StdDAO dao) {
		this.dao = dao;
	}
    
	public String select() throws Exception {
		List<Student> lst = new ArrayList<Student>();
		lst = dao.Select();
		
        result=JSONArray.fromObject(lst);
       
        System.out.println("this is result " + result.size());
        
       
        return "success";
	}
	
	public String insert() throws Exception {
		
		dao.Add(std);
		return "success";
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println(std.getXming());
		dao.Add(std);
		return "good";
	}

}
