package com.proyecto.capgemini.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListaController {
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView listAction() {

		List<String> prueba= new ArrayList<>();
		prueba.add("Atul");
		prueba.add("Abhinav");
		prueba.add("Prince");
		prueba.add("Gaurav");

		ModelAndView mv = new ModelAndView();

		mv.setViewName("index");
		mv.addObject("empList", prueba);

		return mv;
	}
}
