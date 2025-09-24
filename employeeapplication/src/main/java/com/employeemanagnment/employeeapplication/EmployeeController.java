package com.employeemanagnment.employeeapplication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employeemanagnment.employeeapplication.entities.Employee;
import com.employeemanagnment.employeeapplication.services.EmployeeService;



@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService studServ;
	
	@GetMapping("/")
	public String home()
	{
		return "NewFile.html";
	}
	
	@GetMapping("/all")
	public String showStudents(Model m)
	{
		List<Employee> list=studServ.getAll();
		m.addAttribute("stlist", list);
		return "employee-list.jsp";
	}
	@GetMapping("/employee")
	public String createForm(Model m) {
	    m.addAttribute("employee", new Employee());
	    return "employee-form.jsp";
	}

	@PostMapping("/employee/save")
	public String save(@ModelAttribute Employee employee) {
	    studServ.save(employee); 
	    return "redirect:/employee";
	}
	@GetMapping("/delete")
	public String Deleteform() {
		return "delete-form.jsp";
		
	}
	
	@PostMapping("/deleteById")
	public String deleteById(@RequestParam Long id, Model model) {
	    Employee emp = studServ.getById(id);
	    if (emp != null) {
	        studServ.delete(id);
	        model.addAttribute("message", "Employee with ID " + id + " deleted.");
	    } else {
	        model.addAttribute("message", "Employee with ID " + id + " not found.");
	    }
	    return "delete-form.jsp";
	}
}
