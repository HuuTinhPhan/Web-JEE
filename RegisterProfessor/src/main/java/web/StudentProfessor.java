package web;

public class StudentProfessor {
	private String noStudent;
	private String nameStudent;
	private String noProfessor;
	private String nameProfessor;
	public StudentProfessor(String noStudent , String nameStudent,String noProfessor, String nameProfessor){
		this.setNoStudent(noStudent);
		this.setNameStudent(nameStudent);
		this.setNoProfessor(noProfessor);
		this.setNameProfessor(nameProfessor);
		
	}
	public String toString() {
		return noStudent + "\t"+ nameStudent + "\t" + noProfessor +"\t" + nameProfessor ;
	}
	

	public String getNameStudent() {
		return nameStudent;
	}
	public void setNameStudent(String nameStudent) {
		this.nameStudent = nameStudent;
	}
	public String getNameProfessor() {
		return nameProfessor;
	}
	public void setNameProfessor(String nameProfessor) {
		this.nameProfessor = nameProfessor;
	}
	public String getNoStudent() {
		return noStudent;
	}

	public void setNoStudent(String noStudent) {
		this.noStudent = noStudent;
	}

	public String getNoProfessor() {
		return noProfessor;
	}

	public void setNoProfessor(String noProfessor) {
		this.noProfessor = noProfessor;
	}
	
}
