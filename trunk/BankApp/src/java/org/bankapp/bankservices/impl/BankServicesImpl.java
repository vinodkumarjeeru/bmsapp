package org.bankapp.bankservices.impl;

import java.util.List;
import org.bankapp.bankservices.BankServices;
import org.bankapp.domain.Bankuser;
import org.bankapp.domain.Customer;
import org.bankapp.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class BankServicesImpl implements BankServices {

    private Session session = HibernateUtils.currentSession();
    private Transaction transaction = session.beginTransaction();
    private static BankServicesImpl IMPL = new BankServicesImpl();

    public static BankServices getInstance() {
        return IMPL;
    }

    private BankServicesImpl() {
    }

    public void createAccount(Customer customer) {
        session.save(customer);
        transaction.commit();


    }

    public void deleteAccount(Customer customer) {

        session.delete(customer);
        transaction.commit();

    }

    public void changeAccountDetails(Customer customer) {

        session.merge(customer);
        transaction.commit();
    }

    public void createDebitCard(Customer customer) {
        // TODO
    }

    public void createCreditCard(Customer customer) {
        // TODO
    }

    public List<Customer> retrieveList() {

        Query query = session.createQuery("from Customer");
        List<Customer> list = query.list();

        return list;
    }

    public Customer getCustomerById(Long id) {
        Query q = session.createQuery("from Customer customer where customer.customerId=:customerId");
        q.setParameter("customerId", new Long(id));
        Customer c = (Customer) q.uniqueResult();
        return c;
    }

    public Bankuser getBankUserById(Long userId) {
        Bankuser bankuser = null;
        Query q = session.createQuery("from Bankuser bankUser where bankUser.userId=:userId");
        q.setParameter("userId", new Long(userId));
        bankuser = (Bankuser) q.uniqueResult();
        return bankuser;
    }
}
