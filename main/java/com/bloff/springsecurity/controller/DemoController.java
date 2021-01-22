package com.bloff.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	// dodajemy zadanie dla liderow - wyswietlenie strony jsp z komunikatem
	@GetMapping("/leaders")
	public String showLeaders() {
		
		return "leaders";
	}
	
	// dodajemy zadanie dla Admina - wyswietlenie strony jsp z komunikatem
	@GetMapping("/systems")
	public String showSystems() {
		
		return "systems";
	}
	

	
	
}
