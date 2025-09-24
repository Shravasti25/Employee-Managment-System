package com.employeemanagnment.employeeapplication.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeemanagnment.employeeapplication.entities.Employee;
import com.employeemanagnment.employeeapplication.repository.EmployeeRepo;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeRepo Repo;
	
	public List<Employee> getAll(){
		return Repo.findAll();
	}
	
	public void save(Employee emp) {
		Repo.save(emp);
	}
	
	public void delete(Long id) {
		Repo.deleteById(id);
	}
	public Employee getById(Long id) {
	    return Repo.findById(id).orElse(null);
	}
}
