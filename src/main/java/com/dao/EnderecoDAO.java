package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.transaction.annotation.Transactional;

import com.entidades.EnderecoCliEntidade;
import com.entidades.ProdutoEntidade;
import com.hibernate.HibernateUtil;

public class EnderecoDAO {

	@Transactional
	public void addEndereco(EnderecoCliEntidade e) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	     session.beginTransaction();
	     session.save(e);
	     session.getTransaction().commit();
	}
	
	@Transactional
	public List < EnderecoCliEntidade > allEnderecos() {
	        
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		 session.beginTransaction();

			List<EnderecoCliEntidade> enderecoList = session.createQuery("from EnderecoCliEntidade").list();
			for(EnderecoCliEntidade p : enderecoList){
				System.out.println("Person List::"+p);
			}
			return enderecoList;
	}
}
