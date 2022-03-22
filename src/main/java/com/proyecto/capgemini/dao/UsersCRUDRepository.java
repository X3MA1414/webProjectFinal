package com.proyecto.capgemini.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import com.proyecto.capgemini.entity.User;
public interface UsersCRUDRepository extends CrudRepository<User, Integer> {

	@Query("from User as u where u.user=:user and u.password=:password")
	//Solo puede dar un ÚNICO objeto con la misma clave y la misma contraseña
	public User getLogin(String user, String password);
	
	@Query("from User as u where u.user=:user")
	public User getUsuario(String user);
	@Query("from User as u where u.password=:password")
	public User getPassword(String password);
	
	@Query("from User")
	public User getTodosUsuarios();
}