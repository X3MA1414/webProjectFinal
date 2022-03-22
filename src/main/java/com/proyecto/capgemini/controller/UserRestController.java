package com.proyecto.capgemini.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.proyecto.capgemini.dao.UsersCRUDRepository;
import com.proyecto.capgemini.entity.Role;
import com.proyecto.capgemini.entity.User;

@RestController
@RequestMapping("usuario")
public class UserRestController {
	@Autowired
	private UsersCRUDRepository userDAO;
	
	public UsersCRUDRepository getRepository() {
		return userDAO;
	}
	
	@GetMapping("/buscarconId/{id}")
	public Optional<User> listarUno(@PathVariable("id") Integer id){
		return userDAO.findById(id);
	}
	@RequestMapping(value = "/crearUsuario/{id}/{user}/{password}/{enabled}/{role}", method = RequestMethod.GET)
	public void actualizar(@PathVariable("id") int id, @PathVariable("user") String user, @PathVariable("password") String password, @PathVariable("enabled") Integer enabled, @PathVariable("role") Integer role){
		User usu = new User();
		usu.setId(id);
		usu.setUser(user);
		usu.setUser(password);
		usu.setEnabled(enabled);
		usu.setRole(new Role());
		userDAO.save(usu);
		
	}
}
