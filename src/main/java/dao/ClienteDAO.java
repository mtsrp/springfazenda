/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.entidades.ClienteEntidade;
import com.util.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author mathe
 */
public class ClienteDAO {

    public void insert(ClienteEntidade cliente) {

// Cria e abre uma sessão
        Session session = HibernateUtil.getSessionFactory().openSession();

// Inicia uma transação
        session.beginTransaction();

// Realiza a operação salvar
        session.save(cliente);

// Comita a transação
        session.getTransaction().commit();

// Libera a memória e encerra a sessão
        session.flush();

        session.close();

    }
}
