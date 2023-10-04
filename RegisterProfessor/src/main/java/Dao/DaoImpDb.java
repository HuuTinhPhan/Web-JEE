package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import web.*;

public class DaoImpDb implements Dao{
    List<Student> students ;
    List<Professor> professors;
    List<Student> studentsByProfessor;
    List<StudentProfessor> registerHistory;
    public DaoImpDb(){
    	students = new ArrayList<>();
    	professors = new ArrayList<>();
    	registerHistory = new ArrayList<>();
     }
	@Override
	public List<StudentProfessor> RegisterHistory() {
		try {
			String sql = "SELECT s.no noStudent, s.name nameStudent, p.no noProfessor, p.name nameProfessor FROM STUDENT s "
					+ "JOIN  REGISTER r ON s.no = r.nostudent "
					+ "JOIN PROFESSOR p ON p.no = r.noprofessor "
					+ "ORDER BY p.no";
			PreparedStatement statement = Connect.getConnection().prepareStatement(sql);
			ResultSet rs =  statement.executeQuery();
			while(rs.next()) {
				StudentProfessor studentprofessor = new StudentProfessor (rs.getString("noStudent"), rs.getString("nameStudent"), rs.getString("noProfessor"), rs.getString("nameProfessor"));
				registerHistory.add(studentprofessor);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return registerHistory;
	}
	@Override
	public void deleteStudentsByProfessor(String noStudent, String noProfessor) {
		try {
			String sql = "DELETE FROM REGISTER WHERE noStudent = ? AND noProfessor = ?";
			PreparedStatement statement = Connect.getConnection().prepareStatement(sql);
			statement.setString(1,noStudent);
			statement.setString(2,noProfessor);
			statement.executeUpdate();
			System.out.println("Delete successful");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
    @Override
	public List<Student> getStudentsByProfessor(String noProfessor) {
		try {
			students.clear();
			String sql = "SELECT sp.noProfessor, s.no, s.name, s.major FROM STUDENT s "
						+ "JOIN REGISTER sp ON sp.noStudent = s.no "
						+ "WHERE sp.noProfessor = ?";
			PreparedStatement statement = Connect.getConnection().prepareStatement(sql);
			statement.setString(1, noProfessor);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				Student student = new Student (rs.getString("no"), rs.getString("name"), rs.getString("major"));
				students.add(student);	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return students;
	}
    
	@Override
	public void RegisterProfessor(String noStudent, String noProfessor) {
	    try {
	        String sql = "INSERT INTO REGISTER (noStudent, noProfessor) " +
	                     "SELECT s.no, p.no FROM STUDENT s " +
	                     "JOIN PROFESSOR p ON s.no = ? AND p.no = ? " + 
	                     "WHERE Not EXISTS(SELECT noStudent FROM REGISTER WHERE noStudent = ?)";
	        PreparedStatement statement = Connect.getConnection().prepareStatement(sql);
	        statement.setString(1, noStudent);
	        statement.setString(2, noProfessor);
	        statement.setString(3, noStudent);
	        int rowsAffected = statement.executeUpdate();

	        if (rowsAffected > 0) {
	            System.out.println("Registration successful");
	        } else {
	            System.out.println("Registration failed: noStudent or noProfessor does not exist or noStudent registered professor");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	@Override
	public List<Professor> getProfessors() {
		try {
			professors.clear();
			String sql =  "SELECT * FROM PROFESSOR";
			PreparedStatement statement = Connect.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            
            while(rs.next()) {
            	Professor professor = new Professor (rs.getString("no"), rs.getString("name"), rs.getString("department"));
            	professors.add(professor);
            	
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return professors;
	}
	@Override
	public List<Student> getStudents() {
		try {
	    	students.clear();
			String sql =  "SELECT * FROM STUDENT";
			PreparedStatement statement = Connect.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            
            while(rs.next()) {
            	Student student = new Student (rs.getString("no"), rs.getString("name"), rs.getString("major"));
            	students.add(student);
            	
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return students;
	}
}
