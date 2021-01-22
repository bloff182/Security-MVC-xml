package com.bloff.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {

	
	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		
		//return "plain-login";
		return "fancy-login";
	}

	//  wyswietlenie strony jsp z komunikatem o bledzie dostepu
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		
		return "access-denied";
	}

}
