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
        std1.setXming("����");
        std1.setXbie("��"); 
        std1.setXyuan("����ѧԺ"); 
        std1.setZhye("�Ź�רҵ");
        lst.add(0,std1);
        Student std2 = new Student();
        std2.setXming("����");
        std2.setXbie("Ů"); 
        std2.setXyuan("��еѧԺ"); 
        std2.setZhye("���רҵ");
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
