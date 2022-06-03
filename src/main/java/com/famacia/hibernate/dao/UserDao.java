/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.famacia.hibernate.dao;

import com.famacia.hibernate.util.HibernateUtil;
import com.farmacia.entity.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author labso08
 */
public class UserDao {
    public void saveUser(Usuario user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public boolean validate(String userName, String password) {

        Transaction transaction = null;
        Usuario user = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (Usuario) session.createQuery("FROM usuario U WHERE U.nombreusuario = :userName").setParameter("userName", userName)
                .uniqueResult();

            if (user != null && user.getContrasena().equals(password)) {
                return true;
            }
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }
}
