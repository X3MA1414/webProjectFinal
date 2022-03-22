
package com.proyecto.capgemini.dao;

import org.springframework.data.repository.CrudRepository;
import com.proyecto.capgemini.entity.Calendar;


public interface CalendarsCRUDRepository extends CrudRepository<Calendar, Integer> {

}