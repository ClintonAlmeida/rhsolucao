package br.com.rhsolucao.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.rhsolucao.daos.FuncionarioDAO;
import br.com.rhsolucao.models.Funcionario;
import br.com.rhsolucao.validation.FuncionarioValidation;

@Controller
@RequestMapping("/funcionarios")
public class FuncionariosController {
	
	@Autowired
	private FuncionarioDAO funcionarioDAO;
	
	@RequestMapping("/form")
	public ModelAndView form(Funcionario funcionario) {
		return new ModelAndView("funcionarios/form");
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	@CacheEvict(value="funcionariosLista", allEntries=true)
	public ModelAndView gravar(@Valid Funcionario funcionario, BindingResult result, RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			return form(funcionario);
		}
		
		System.out.println(funcionario);
		funcionarioDAO.gravar(funcionario);
		redirectAttributes.addFlashAttribute("sucesso", "Produto cadastrado com sucesso");
		return new ModelAndView("redirect:funcionarios");
	}
	
	@RequestMapping(method = RequestMethod.GET)
	@Cacheable(value="funcionariosLista")
	public ModelAndView lista() {
		
		List<Funcionario> funcionarios = funcionarioDAO.listar();
		ModelAndView modelAndView = new ModelAndView("funcionarios/lista");
		modelAndView.addObject("funcionarios", funcionarios);
		System.out.println("Acessando lista de usuarios");
		return modelAndView;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new FuncionarioValidation());
	}
	

	
}
