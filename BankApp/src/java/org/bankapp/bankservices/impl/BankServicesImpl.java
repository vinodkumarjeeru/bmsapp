package org.bankapp.bankservices.impl;

import java.util.List;
import org.bankapp.bankservices.BankServices;
import org.bankapp.domain.Balance;
import org.bankapp.domain.Bankuser;
import org.bankapp.domain.Customer;
import org.bankapp.domain.Details;
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
        beginTrans();
        session.save(customer);
        transaction.commit();



    }

    public void deleteAccount(Customer customer) {
        beginTrans();
        session.delete(customer);
        transaction.commit();


    }

    public void changeAccountDetails(Customer customer) {
        beginTrans();
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

    public Balance getBalanceByAcctId(Long accountId) {
        Balance balance = null;
        Query q = session.createQuery("from Balance balance where balance.accountId=:acctId");
        q.setParameter("acctId", new Long(accountId));
        balance = (Balance) q.uniqueResult();
        return balance;
    }

    public void changeAccountDetails(Bankuser bankuser) {
        beginTrans();
        session.merge(bankuser);
        transaction.commit();
    }

    public void changeAccountDetails(Balance balance) {
        beginTrans();
        session.merge(balance);
        transaction.commit();
    }

    private void beginTrans() {
        transaction.begin();
    }

    public String withdrawMoney(Long accountId, Double amount) {
        beginTrans();
        String status = null;
        Balance balance = getBalanceByAcctId(accountId);
        if (balance != null) {
            Query q = session.createQuery("from Customer c where c.accountId=:acctId");
            q.setParameter("acctId", accountId);
            Customer c = (Customer) q.uniqueResult();
            Double minBal = c.getDetaildId().getMinimumBalance();
            if ((balance.getBalance() - amount) < minBal) {
                status = "Low Balance";
            } else {
                balance.setBalance(balance.getBalance() - amount);
                session.merge(balance);
                transaction.commit();
                status = "Withdrawn";
            }
        }
        return status;
    }

    public String depositMoney(Long accountId, Double amount) {
        beginTrans();
        String status = null;
        Balance balance = getBalanceByAcctId(accountId);
        if (balance != null) {
            balance.setBalance(balance.getBalance() + amount);
            session.merge(balance);
            transaction.commit();
            status = "Deposited";
        }
        return status;
    }

    public Details getDetails(Long accountId) {
        Details details = null;
        Balance balance = getBalanceByAcctId(accountId);
        if (balance != null) {
            Query q = session.createQuery("from Customer c where c.accountId=:acctId");
            q.setParameter("acctId", accountId);
            Customer c = (Customer) q.uniqueResult();
            details = c.getDetaildId();
        }
        return details;
    }
}
