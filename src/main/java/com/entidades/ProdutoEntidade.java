/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entidades;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Matheus
 */
@Entity
@Table(name = "produto")
public class ProdutoEntidade {
    @Id
    @GeneratedValue
    private int id_prod;
    private String nome_prod;
    private String tipo_prod;
    @Temporal(TemporalType.DATE)
    private Date validade_prod;
    private float qtd_estoque_produto;
    private String img_prod;

    public ProdutoEntidade() {
    }

    public ProdutoEntidade(String nome_prod, String tipo_prod, Date validade_prod, String img_prod) {
        this.nome_prod = nome_prod;
        this.tipo_prod = tipo_prod;
        this.validade_prod = validade_prod;
        this.img_prod = img_prod;
    }

    
    public String getNome_prod() {
        return nome_prod;
    }

    public void setNome_prod(String nome_prod) {
        this.nome_prod = nome_prod;
    }

    public String getTipo_prod() {
        return tipo_prod;
    }

    public void setTipo_prod(String tipo_prod) {
        this.tipo_prod = tipo_prod;
    }

    public Date getValidade_prod() {
        return validade_prod;
    }

    public void setValidade_prod(Date validade_prod) {
        this.validade_prod = validade_prod;
    }

    public String getImg_prod() {
        return img_prod;
    }

    public void setImg_prod(String img_prod) {
        this.img_prod = img_prod;
    }

    public float getQtd_estoque_produto() {
        return qtd_estoque_produto;
    }

    public void setQtd_estoque_produto(float qtd_estoque_produto) {
        this.qtd_estoque_produto = qtd_estoque_produto;
    }
    
    
    
}
