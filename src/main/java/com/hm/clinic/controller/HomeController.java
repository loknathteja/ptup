package com.hm.clinic.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hm.clinic.model.User;
import com.hm.clinic.persistence.HomeMapper;

@Controller
public class HomeController {
	@Autowired
	private HomeMapper homeMapper;

	@RequestMapping(value="/")
	public ModelAndView getHome(HttpServletResponse response) throws IOException{
		User user = homeMapper.getUserById(1);
		System.out.println(user.getUserName());
		return new ModelAndView("home");
	}
}
