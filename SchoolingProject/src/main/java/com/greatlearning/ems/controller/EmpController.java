package com.greatlearning.ems.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.greatlearning.ems.model.Employee;
import com.greatlearning.ems.model.User;
import com.greatlearning.ems.service.EmpService;

@RestController
public class EmpController {

	@Autowired
	EmpService rs;
	
	
	//Add Employee
	@PostMapping("/addEmployee")
	public Employee saveEmployee(@RequestBody Employee emp){
		return rs.save(emp);
	}
	
	//Add Employees
	@PostMapping("/addEmployees")
	public List<Employee> saveEmployees(@RequestBody List<Employee> emp){
		return rs.saveEmployees(emp);
	}
	
	//getEmployeebyId
	@GetMapping("/api/employeeid/{id}")
	public Employee getEmployeeById(@PathVariable int id){
		return rs.getEmployeeById(id);
	}
	
	//getEmployeeName greaterthan
	@GetMapping("/api/employeesname/search/{firstName}")
	public List<Employee> getEmployeeByName(@PathVariable String firstName){
		return rs.getEmployeeByName(firstName);
	}
	
	//update the employee
	@PutMapping("/update")
	public Employee updateEmployee(@RequestBody Employee employee){
		
		return rs.updateEmployee(employee);
	}
	
	//delete the employee
	@DeleteMapping("/delete/employee/{id}")
	public String deleteEmployee(@PathVariable int id){
		
		return rs.deleteEmployee(id);
	}
	
	@GetMapping("/api/employees/sort/{order}")
	public List<Employee> getorderOfEmployees(@PathVariable String order){
		return rs.getorderOfEmployees(order);
	}
	
	
}
