package com.fazenda.controllers;

import java.util.List;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ClienteDAO;
import com.entidades.ClienteEntidade;
import com.entidades.ProdutoEntidade;
import com.service.ClienteService;

@Controller
public class MyController {


	@RequestMapping(value = "/home")
	public String telaindex() {
		return "index";
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
	public String mostraClientes(Model theModel) {
		ClienteDAO serv = new ClienteDAO();
        List < ClienteEntidade > clientes = serv.allClientes();
        theModel.addAttribute("customers", clientes);
        return "cliente/listaCliente";
	}
    
	@RequestMapping(value = "/cadastroprod")
	public String cadastroProd(@ModelAttribute("pro") ProdutoEntidade pro ) {
	return "produto/cadastropro";
	}
}
