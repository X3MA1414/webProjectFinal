package com.proyecto.capgemini.controller;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.proyecto.capgemini.dao.UsersCRUDRepository;
import com.proyecto.capgemini.entity.User;

@Controller
public class LoginController {
	String path= "";
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String init(Model model) {
		return "index";

	}
	@Autowired
	private UsersCRUDRepository ucr;
	
	public UsersCRUDRepository getUcrRepository(){
		return ucr;
	}
	@RequestMapping
	  public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean) {
	    if (loginBean != null && loginBean.getUserName() != null & loginBean.getPassword() != null) { 
	    	User us2 = getUcrRepository().getUsuario(loginBean.getUserName());
	      if (us2 !=null) {
	    	 if (us2.getPassword().equals(loginBean.getPassword())) {
	    		 path="profile";	 
	    	 }else {
	        model.addAttribute("error", "Contraseña incorrecta");        
	        path="login";
	    	 }
	      } else {
	        model.addAttribute("error", "Nombre de usuario incorrecto");
	        path="login";
	      }
	    } else {
	        model.addAttribute("error", "ytytuyt");
	        path="login";
	    }
	    return path;
	  }
}
