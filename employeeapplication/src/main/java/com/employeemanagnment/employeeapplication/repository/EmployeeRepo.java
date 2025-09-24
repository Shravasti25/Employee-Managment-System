package com.employeemanagnment.employeeapplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.employeemanagnment.employeeapplication.entities.Employee;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Long>
{

}
