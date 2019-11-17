package com.entidades;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ClienteEndereco")

public class EnderecoCliEntidade {
	@Id
    @GeneratedValue
    private int idEndereco;
	private String cep;
	private String rua;
    private String numero; 
	private String complemento;
	private String cidade;
	private String estado;
	
	@ManyToOne
	@JoinColumn(name = "idCliente")
	private ClienteEntidade cli;

	public int getIdEndereco() {
		return idEndereco;
	}
	public void setIdEndereco(int idEndereco) {
		this.idEndereco = idEndereco;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	/*
	 * public EnderecoCliEntidade(int idEndereco, String cep, String rua, String
	 * numero, String complemento, String complemento, String estado) { super();
	 * this.idEndereco = idEndereco; this.cep = cep; this.rua = rua; this.numero =
	 * numero; this.complemento = complemento; this.estado = estado;
	 * 
	 * }
	 * 
	 * public EnderecoCkiEntidade() { super(); }
	 * 
	 * @Override public String toString() { return "Customer [id=" + idEndereco +
	 * ", firstName=" + nome + ", lastName=" + sobrenome + ", email=" + email + "]";
	 * }
	 */
	
}
