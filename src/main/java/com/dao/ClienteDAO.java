/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.entidades.ClienteEntidade;
import com.hibernate.HibernateUtil;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Transactional
	public List < ClienteEntidade > allClientes() {
	        
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		 session.beginTransaction();

			List<ClienteEntidade> personsList = session.createQuery("from ClienteEntidade").list();
			for(ClienteEntidade p : personsList){
				System.out.println("Person List::"+p);
			}
			return personsList;
	}
	
}
