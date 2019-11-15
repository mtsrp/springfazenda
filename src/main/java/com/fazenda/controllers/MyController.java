package com.fazenda.controllers;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ClienteDAO;
import com.entidades.ClienteEntidade;
import com.service.ClienteService;

@Controller
public class MyController {

	private String[] quotes = { "Quote1", "Quote2", "Quote3" };
	private ClienteService clienteService;

	@RequestMapping(value = "/getQuote")
	public String getRandomQuote(Model model) {

		int rand = new Random().nextInt(quotes.length);
		String randomQuote = quotes[rand];

		model.addAttribute("randomQuote", randomQuote);

		return "quote";
	}

	@RequestMapping(value = "/cadastrocli")
	public String telaCadCli(@ModelAttribute("cli") ClienteEntidade cli) {
		return "cliente/cadastrocli";
	}

	@RequestMapping(value = "/cadastrarcli", method = RequestMethod.POST)
	public String cadastroCliente(@ModelAttribute("cli") ClienteEntidade cli) {
		ClienteDAO dao = new ClienteDAO();
		dao.addCliente(cli);
		return "index";
	}
	
	@RequestMapping(value = "/mostrarcli")
	public String mostraClientes() {
		ClienteDAO dao = new ClienteDAO();
		dao.allClientes();
		return "index";
	}

}
