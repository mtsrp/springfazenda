/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

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

    public ClienteEntidade() {
    }

    public ClienteEntidade(String nome) {
        this.nome = nome;
    }
    
    
}
