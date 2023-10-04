package web;

import java.util.ArrayList;
import java.util.List;

public class Professor  {
	private String no;
	private String name;
	private String department;
	private List<Student> students;

	public Professor(String no, String name, String department) {
		this.setNo(no);
		this.setName(name);
		this.setDepartment(department);
		students = new ArrayList<>();
	}
	
	public String toString() {
		return no + "\t"+ name + "\t" + department;
	}
	
	public void setNo(String no) {
		this.no = no;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getNo() {
		return no;
	}
	public String getName() {
		return name;
	}
	public String getDepartment() {
		return department;
	}
	
}
