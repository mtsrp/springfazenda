/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.transaction.annotation.Transactional;

import com.entidades.ClienteEntidade;
import com.entidades.ProdutoEntidade;
import com.hibernate.HibernateUtil;

/**
 *
 * @author Matheus
 */
public class ProdutoDAO {
	@Transactional
	public void addProduto(ProdutoEntidade p) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	     session.beginTransaction();
	     session.save(p);
	     session.getTransaction().commit();
	}
	
	@Transactional
	public List < ProdutoEntidade > allProdutos() {
	        
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		 session.beginTransaction();

			List<ProdutoEntidade> produtosList = session.createQuery("from ProdutoEntidade").list();
			for(ProdutoEntidade p : produtosList){
				System.out.println("Person List::"+p);
			}
			return produtosList;
	}
}
