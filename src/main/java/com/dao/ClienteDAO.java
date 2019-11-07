/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.entidades.ClienteEntidade;
import com.hibernate.HibernateUtil;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author mathe
 */
@Repository
public class ClienteDAO {

	@Transactional
	public void addCliente(ClienteEntidade c) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	     session.beginTransaction();
	     session.save(c);
	     session.getTransaction().commit();
	}
	
}
