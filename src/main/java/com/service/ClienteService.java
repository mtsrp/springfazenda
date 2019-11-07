package com.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ClienteDAO;
import com.entidades.ClienteEntidade;

@Service
public class ClienteService {

	private ClienteDAO clienteDAO;

	public void setclienteDAO(ClienteDAO clienteDAO) {
		this.clienteDAO = clienteDAO;
	}

	@Transactional
	public void addPerson(ClienteEntidade c) {
		this.clienteDAO.addCliente(c);
	}

	/*
	@Transactional
	public void updatePerson(ClienteEntidade p) {
		this.clienteDAO.updatePerson(p);
	}

	
	@Transactional
	public List<ClienteEntidade> listPersons() {
		return this.clienteDAO.listPersons();
	}

	
	@Transactional
	public ClienteEntidade getPersonById(int id) {
		return this.clienteDAO.getPersonById(id);
	}*/

}
