package org.bankapp.bankservices.impl;

import java.util.List;
import org.bankapp.bankservices.BankServices;
import org.bankapp.domain.Customer;
import org.bankapp.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class BankServicesImpl implements BankServices {

    private Session session = null;
    private Transaction transaction = null;

    private static BankServicesImpl IMPL = new BankServicesImpl();
    
    public BankServicesImpl() {
    }

    public void createAccount(Customer customer) {
        session = HibernateUtils.currentSession();
        transaction = session.beginTransaction();
        session.save(customer);
        transaction.commit();
        session.close();

    }

    public void deleteAccount(Customer customer) {
        session = HibernateUtils.currentSession();
        transaction = session.beginTransaction();
        session.delete(customer);
        transaction.commit();
        session.close();
    }

    public void changeAccountDetails(Customer customer) {
        session = HibernateUtils.currentSession();
        transaction = session.beginTransaction();
        session.merge(customer);
        transaction.commit();
        session.close();
    }

    public void createDebitCard(Customer customer) {
        // TODO
    }

    public void createCreditCard(Customer customer) {
        // TODO
    }

    public List<Customer> retrieveList() {
        session = HibernateUtils.currentSession();
        Query query = session.createQuery("from Customer");
        List<Customer> list = query.list();
        session.close();
        return list;
    }
}
