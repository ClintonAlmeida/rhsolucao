package br.com.rhsolucao.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.rhsolucao.daos.FuncionarioDAO;
import br.com.rhsolucao.models.Funcionario;

@Controller
@RequestMapping("funcionarios")
public class FuncionariosController {
	
	@Autowired
	private FuncionarioDAO funcionarioDAO;
	
	@RequestMapping("/form")
	public String form() {
		return "funcionarios/form";
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	public String gravar(Funcionario funcionario) {
		
		System.out.println(funcionario);
		funcionarioDAO.gravar(funcionario);
		return "funcionarios/lista";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView lista() {
		
		List<Funcionario> funcionarios = funcionarioDAO.listar();
		ModelAndView modelAndView = new ModelAndView("funcionarios/lista");
		modelAndView.addObject("funcionarios", funcionarios);
		System.out.println("Acessando lista de usuarios");
		return modelAndView;
	}
	
	
}
