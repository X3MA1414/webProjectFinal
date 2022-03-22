package com.proyecto.capgemini.dao;

import org.springframework.data.repository.CrudRepository;

import com.proyecto.capgemini.entity.Employee;

public interface EmployeesCRUDRepository extends CrudRepository<Employee, Integer> {
	
	
}