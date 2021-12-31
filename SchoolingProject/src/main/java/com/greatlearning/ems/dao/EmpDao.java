package com.greatlearning.ems.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greatlearning.ems.model.Employee;

@Repository
public interface EmpDao extends JpaRepository<Employee, Integer>{

	public List<Employee> findByFirstName(String firstName);
	
	 public List<Employee> findAllByOrderByIdAsc();
	 
	 public List<Employee> findAllByOrderByIdDesc();
}
