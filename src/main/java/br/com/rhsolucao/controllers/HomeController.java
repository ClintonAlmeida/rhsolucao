package br.com.rhsolucao.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		
		System.out.println("Exibindo a home");
		return "home";
	}
}
