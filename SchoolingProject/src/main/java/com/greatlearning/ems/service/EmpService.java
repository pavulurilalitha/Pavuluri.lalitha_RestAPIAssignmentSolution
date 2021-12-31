package com.greatlearning.ems.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.ems.dao.EmpDao;
import com.greatlearning.ems.model.Employee;
import com.greatlearning.ems.model.User;

@Service
public class EmpService {

	@Autowired
	EmpDao rdo;
	
	@Autowired
	User udo;
	
	public Employee save(Employee emp) {
		return rdo.save(emp);
	}
	
	public List<Employee> saveEmployees(List<Employee> employee){
		return rdo.saveAll(employee);
	}

	public List<Employee> getEmployees(){
		return rdo.findAll();
	}
	
	public Employee getEmployeeById(int id){
		return rdo.findById(id).orElse(null);
	}
	
	public List<Employee> getEmployeeByName(String firstName){
		return rdo.findByFirstName(firstName);
	}
	
	public String deleteEmployee(int id){
		rdo.deleteById(id);
		return "Deleted employee id -"+id;
	}
	
	public Employee updateEmployee(Employee employee){
		
		Employee emp =rdo.findById(employee.getId()).orElse(null);
		emp.setFirstName(employee.getFirstName());
		emp.setLastName(employee.getLastName());
		emp.setEmail(employee.getEmail());
		return rdo.save(emp);
	}

	public List<Employee> getorderOfEmployees(String order) {
		Employee emp=null;
		if(order.equals("asc")){
			
			return rdo.findAllByOrderByIdAsc(); 
		}
		else if(order.equals("desc")){
			return rdo.findAllByOrderByIdDesc();
		}
		return null;
		
	}

}
