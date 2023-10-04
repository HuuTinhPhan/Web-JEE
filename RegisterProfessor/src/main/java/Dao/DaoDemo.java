package Dao;

import java.util.List;

import web.*;

public class DaoDemo {
	public static void main(String[] args) {
		Dao b = new DaoImpDb();
		
		for(Student professor:b.getStudentsByProfessor("0001")) {
			System.out.println(professor);
		}
		
		/*for(Student student:b.getStudents()) {
			System.out.println(student);
		}*/
		/*b.RegisterProfessor("20110006", "0001");*/
		/*List<Student> B = b.getStudentsByProfessor("0001");
		for (Student s:B) {
			System.out.println(s);
		}*/
		/*b.deleteStudentsByProfessor("20120002", "0005");
		List<Student> B = b.getStudentsByProfessor("0005");
		for (Student s : B) {
			System.out.println(s);
		}*/
	}
}
