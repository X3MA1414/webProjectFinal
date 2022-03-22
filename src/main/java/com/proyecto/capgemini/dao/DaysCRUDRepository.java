package com.proyecto.capgemini.dao;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.proyecto.capgemini.entity.Day;

@Repository
public interface DaysCRUDRepository extends CrudRepository<Day, Integer> {

	
	@Query("from Day as d  where d.especial=:dato")
	public Iterable<Day> getJornadasConUno(boolean dato);

}