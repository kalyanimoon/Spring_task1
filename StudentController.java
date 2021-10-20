package com.springmvc;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {

	@Autowired
	 Studentdao studao;
	 @RequestMapping("/crud")
	 public String getRegistrationForm()
	 {
	  return "Studentform";
	 }
	 
	 @RequestMapping(value="/saveStudent",method=RequestMethod.POST)
	 public String getSave(@ModelAttribute("student") StuModel student)
	 {
	  studao.save(student);
	  return "redirect:/view";
	 }
	 
	 @RequestMapping("/view")
	 public String getView(Model model)
	 {
	  List<StuModel> list = studao.getAllStudent();
	  model.addAttribute("studentlist",list);
	  return "studentview";
	 }
	 @RequestMapping("/delete/{STUDENT_NO}")
	 public String deleteStudent(@PathVariable int STUDENT_NO,HttpSession session)
	 {
	  studao.delete(STUDENT_NO);
	  session.setAttribute("msg", "<script>alert('Student Updated Succes!!!')</script>");
	   return "redirect:/viewstudent";
	 }

	 @RequestMapping("edit/{STUDENT_NO}")
	 public String getStudentById(@PathVariable int STUDENT_NO,Model m)
	 {
	  StuModel student = studao.getStudentByID(STUDENT_NO);
	  m.addAttribute("command", student);
	  m.addAttribute("student", student);
	  return "studentedit";
	 }
	 
	 @RequestMapping(value="/update",method=RequestMethod.POST)
	 public String getUpdateStudent(@ModelAttribute("student") StuModel student,HttpSession session)
	 {
	  
	  studao.getUpdateStudent(student);
	  session.setAttribute("msg1", "<script>alert('Student Updated Successs!!!')</script>");
	  return "redirect:/viewstudent";
	 }
}
