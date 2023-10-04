package Dao;

import java.util.*;
import web.*;

public interface Dao {
	public List<Professor> getProfessors(); 
	public List<Student> getStudents();
	public void RegisterProfessor(String noProfessor, String noStudent); 
	public List<Student> getStudentsByProfessor(String noProfessor);
	public void deleteStudentsByProfessor(String noStudent, String noProfessor);
	public List<StudentProfessor> RegisterHistory() ;
}
