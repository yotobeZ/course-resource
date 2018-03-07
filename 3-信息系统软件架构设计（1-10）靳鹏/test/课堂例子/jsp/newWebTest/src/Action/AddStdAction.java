package Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StdDAO;
import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

public class AddStdAction extends ActionSupport{ //implements ServletRequestAware {
    
    //private HttpServletRequest request;
	//private String result;
    //private static final long serialVersionUID = 1L;
	private String xming ;
	private String xbie ;
	private String xyuan ;
	private String zhye ;
	
	
    private JSONArray result;
    private List<String> lst = new ArrayList<String>() ;
    private StdDAO dao;
    
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

	public List<String> getLst() {
		return lst;
	}

	public void setLst(List<String> lst) {
		this.lst = lst;
	}

	public JSONArray getResult() {
		return result;
	}

	public void setResult(JSONArray result) {
		this.result = result;
	}

	public StdDAO getDao() {
		return dao;
	}

	public void setDao(StdDAO dao) {
		this.dao = dao;
	}

	//public void setServletRequest(HttpServletRequest arg0) {
		//this.request = arg0;
	//}
	
   
	@Override
	public String execute() throws Exception {
		
		return null;
	}
	
	/**
	 * 处理ajax请求
	 * @return SUCCESS
	 */
	public String excuteAjax() throws Exception {
		
		try {
			
			    lst.clear();
			    lst.add(xming);
			    lst.add(xbie);
			    lst.add(xyuan);
			    lst.add(zhye);
			    
			    JSONArray jsarry=new JSONArray();
		        jsarry=JSONArray.fromObject(lst); 
		        result=jsarry;  
		    
		        HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE); 
		        response.setCharacterEncoding("UTF-8"); 
		        response.getWriter().print(result);
		    
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
