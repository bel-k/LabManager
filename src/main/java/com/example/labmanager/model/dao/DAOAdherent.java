package com.example.labmanager.model.dao;


import com.example.labmanager.model.bo.Client;
import com.example.labmanager.model.bo.Livre;
import org.hibernate.HibernateError;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
public class DAOClient {
    public boolean create(Client C) {
        Transaction tx=null;
        try{
            Session session=NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx=session.beginTransaction();
            session.save(C);
            tx.commit();
            return true;
        }
        catch(HibernateError e){
            tx.rollback();
            return false;
        }

    }


    public Collection<Client> retreive() {
        Transaction tx=null;
        try{
            Session session=NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx=session.beginTransaction();
            Vector<Client> LC=new Vector<>();
            List<Client> clients=session.createQuery("FROM Client").list();
            Iterator<Client> it = clients.iterator();
            while(it.hasNext()){
                Object o=it.next();
                Client C=(Client) o;
                LC.add(new Client(C.getCin(),C.getNom(),C.getPrenom()));
            }
            tx.commit();
            return LC;
        }
        catch(HibernateError e){
            tx.rollback();
            return null;
        }
    }



    public boolean update(String cin,String nom ,String prenom) {
        Transaction tx=null;
        try{
            Session session=NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx=session.beginTransaction();
            Client c=(Client) session.get(Client.class,cin);
            c.setNom(nom);
            c.setPrenom(prenom);
            session.update(c);
            tx.commit();
            return true;
        }
        catch(HibernateError e){
            tx.rollback();
            return false;
        }
    }



    public boolean delete(String cin) {
        Transaction tx=null;
        try{
            Session session=NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx=session.beginTransaction();
            Client c=(Client) session.get(Client.class,cin);
            session.delete(c);
            tx.commit();
            return true;
        }
        catch(HibernateError e){
            tx.rollback();
            return false;
        }
    }
}
