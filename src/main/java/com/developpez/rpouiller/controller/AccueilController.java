package com.developpez.rpouiller.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.developpez.rpouiller.bean.Course;
import com.developpez.rpouiller.services.IServiceListeCourses;

@Controller
@RequestMapping(value="/accueil")
public class AccueilController {

	@Autowired
	private IServiceListeCourses service;
	
	@RequestMapping(method = RequestMethod.GET)
	public String afficher(ModelMap pModel) {
		final List<Course> lListeCourses = service.rechercherCourses();
		pModel.addAttribute("accueil", lListeCourses);
		return "accueil";
	}
}