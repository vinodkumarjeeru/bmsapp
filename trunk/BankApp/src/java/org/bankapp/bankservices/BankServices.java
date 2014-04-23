package org.bankapp.bankservices;

import java.util.List;
import org.bankapp.domain.Balance;
import org.bankapp.domain.Bankuser;
import org.bankapp.domain.Customer;

public interface BankServices {

    public void createAccount(Customer customer);

    public void deleteAccount(Customer customer);

    public void changeAccountDetails(Customer customer);

    public void createDebitCard(Customer customer);

    public void createCreditCard(Customer customer);

    public Customer getCustomerById(Long id);

    public List<Customer> retrieveList();
    
    public Bankuser getBankUserById(Long userId);
    
    public Balance getBalanceByAcctId(Long accountId);
}