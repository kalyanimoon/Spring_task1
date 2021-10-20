package com.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class Studentdao {

	JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

		public int save(StuModel student) {
			// TODO Auto-generated method stub
			String sql = "insert into student(STUDENT_NO,STUDENT_NAME,STUDENT_DOB,STUDENT_DOJ) value('"+student.getSTUDENT_NO()+"','"+student.getSTUDENT_NAME()+"','"+student.getSTUDENT_DOB()+"','"+student.getSTUDENT_DOJ()+"')";
			  return jdbcTemplate.update(sql);
		}

	

		public List<StuModel> getAllStudent() {
			// TODO Auto-generated method stub
			return jdbcTemplate.query("select * from student", new RowMapper<StuModel>() {

				@Override
				public StuModel mapRow(ResultSet rs, int arg1) throws SQLException {
					// TODO Auto-generated method stub
					StuModel student = new StuModel();
				    student.setSTUDENT_NO(rs.getInt(1));
				    student.setSTUDENT_NAME(rs.getString(2));
				    student.setSTUDENT_DOB(rs.getString(3));
				    student.setSTUDENT_DOJ(rs.getString(4));
				   
				    return student;
				   }
				
				
				
			});
		}

		public int delete(int sTUDENT_NO) {
			// TODO Auto-generated method stub
			String sql = "delete from student where STUDENT_NO='"+sTUDENT_NO+"'";
			  return jdbcTemplate.update(sql);
		}

		public StuModel getStudentByID(int sTUDENT_NO) {
			// TODO Auto-generated method stub
			String sql = "select * from student where STUDENT_NO='"+sTUDENT_NO+"'"; 
			  return jdbcTemplate.queryForObject(sql, new Object[] {},new BeanPropertyRowMapper<StuModel>(StuModel.class));
		
		}

		public int getUpdateStudent(StuModel student) {
			// TODO Auto-generated method stub
			String sql = "update student set STUDENT_NAME='"+student.getSTUDENT_NAME()+"',STUDENT_DOB='"+student.getSTUDENT_DOB()+"',STUDENT_DOJ='"+student.getSTUDENT_DOJ()+"' where STUDENT_NO= '"+student.getSTUDENT_NO()+"' ";
			  return jdbcTemplate.update(sql);
			 }

		
		}

