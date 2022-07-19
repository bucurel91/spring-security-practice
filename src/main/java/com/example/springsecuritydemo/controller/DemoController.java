package com.example.springsecuritydemo.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {
		return "home";
	}

//	@PreAuthorize("isAuthenticated() && hasRole(\"ADMIN\")")
	@GetMapping("/leaders")
	public String leadersPage() {
		return "leaders";
	}

	@PreAuthorize("isAuthenticated() && hasRole('ADMIN')")
	@GetMapping("/systems")
	public String systemsPage() {
		return "systems";
	}
}
