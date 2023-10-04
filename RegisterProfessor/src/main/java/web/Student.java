package web;

import java.util.*;

public class Student {
	private String no;
	private String name;
	private String major;
	private Professor theProfessor;

	public Student(String no, String name, String major) {
		this.setNo(no);
		this.setName(name);
		this.setMajor(major);
		this.setTheProfessor(null);
	}
	
	public String toString() {
		return no + "\t"+ name + "\t" + major;
	}
	public String getNo() {
		return no;
	}


	public void setNo(String no) {
		this.no = no;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Professor getTheProfessor() {
		return theProfessor;
	}

	public void setTheProfessor(Professor theProfessor) {
		this.theProfessor = theProfessor;
	}

	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	
}
