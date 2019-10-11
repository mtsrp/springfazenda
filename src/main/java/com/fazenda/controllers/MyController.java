package com.fazenda.controllers;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	private String[] quotes = {"Quote 1" , "Quote 2", "Quote 3"};
	
	@RequestMapping(value="/getQuote")
	@ResponseBody
	public String getRandomQuote(Model model) {
		
		int rand = new Random().nextInt(quotes.length);
		String randomQuote = quotes[rand];
		
		model.addAttribute("randomQuote", randomQuote);
		
		return "quote";
	}
}
