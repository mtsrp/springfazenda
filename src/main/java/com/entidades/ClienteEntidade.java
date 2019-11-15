/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entidades;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author mathe
 */
@Entity
@Table(name = "Cliente")
public class ClienteEntidade {
    @Id
    @GeneratedValue
    private int idCliente;
    private String nome;
    private String sobrenome;
	
	private String email; private String celular; private String telefone;
	private String senha; private String genero;
	 @Temporal(TemporalType.DATE) private Calendar dtaNasc;
	 

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    public ClienteEntidade(String nome) {
        this.nome = nome;
    }

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	
	  public String getEmail() { return email; }
	  
	  public void setEmail(String email) { this.email = email; }
	  
	  public String getCelular() { return celular; }
	  
	  public void setCelular(String celular) { this.celular = celular; }
	  
	  public String getTelefone() { return telefone; }
	  
	  public void setTelefone(String telefone) { this.telefone = telefone; }
	  
	  public String getSenha() { return senha; }
	  
	  public void setSenha(String senha) { this.senha = senha; }
	  
	  public String getGenero() { return genero; }
	  
	  public void setGenero(String genero) { this.genero = genero; }
	  
	  public Calendar getDtaNasc() { return dtaNasc; }
	  
	  public void setDtaNasc(Calendar dtaNasc) { this.dtaNasc = dtaNasc; }
	 

	public ClienteEntidade(int idCliente, String nome, String sobrenome, String email, String celular, String telefone,
			String senha, String genero, Calendar dtaNasc) {
		super();
		this.idCliente = idCliente;
		this.nome = nome;
		this.sobrenome = sobrenome;
		
		  this.email = email; this.celular = celular; this.telefone = telefone;
		  this.senha = senha; this.genero = genero; this.dtaNasc = dtaNasc;
		 
	}

	public ClienteEntidade() {
		super();
	}
    
	@Override
    public String toString() {
        return "Customer [id=" + idCliente + ", firstName=" + nome + ", lastName=" + sobrenome + ", email=" + email + "]";
    }
    
    
}
