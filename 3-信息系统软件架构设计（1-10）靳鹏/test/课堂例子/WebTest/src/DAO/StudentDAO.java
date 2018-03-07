package DAO;

import java.util.ArrayList;
import java.util.List;

import Model.Student;

@SuppressWarnings("serial")
public class StudentDAO implements java.io.Serializable{
    
	public static List<Student> lst= new ArrayList<Student>();
    
    private Student std = new Student();
    
    public List<Student> getLst() {
		return lst;
	}

	public void setLst(List<Student> lst) {
		this.lst = lst;
	}

	public Student getStd() {
		return std;
	}

	public void setStd(Student std) {
		this.std = std;
	}

	public StudentDAO (){}

    public void Init(){
        Student std1 = new Student();
        std1.setXming("张三");
        std1.setXbie("男"); 
        std1.setXyuan("管理学院"); 
        std1.setZhye("信管专业");
        lst.add(0,std1);
        Student std2 = new Student();
        std2.setXming("李四");
        std2.setXbie("女"); 
        std2.setXyuan("机械学院"); 
        std2.setZhye("设计专业");
        lst.add(1,std2);
        
    }
    
	public void Add(Student s){	
		
    	lst.add(s);    	
    	
	}
    
    public void Del(Student s){
		int i = lst.size();
		if (i>0){
			for(int k=0; k<lst.size();k++){
				if(lst.get(k).equals(s)){
					lst.remove(k);
					break;
				}
			}
		}
	}
	
	public List<Student> Select(){
		System.out.println(lst.size());
		if (lst.size()>0){
			return lst;
		}
		else
		    return null;
	}
	
	public void Update(Student s){
		int i = lst.size();
		if (i>0){
			for(int k=0; k<lst.size();k++){
				if(lst.get(k).equals(s)){
					lst.remove(k);
					lst.add(k,s);
					break;
				}
			}
		}
	}
	
}
