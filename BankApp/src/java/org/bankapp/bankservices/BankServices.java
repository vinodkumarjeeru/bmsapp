
package org.bankapp.bankservices;

import java.util.List;
import org.bankapp.domain.Bankuser1;


public interface BankServices {
    
    public void createAccount(Bankuser1 bankuser1);
    public void deleteAccount(Bankuser1 bankuser1);
    public void changeAccountDetails(Bankuser1 bankuser1);
    public void createDebitCard(Object object);
    public void createCreditCard(Object object);
    public List<Bankuser1> retrieveList();
}