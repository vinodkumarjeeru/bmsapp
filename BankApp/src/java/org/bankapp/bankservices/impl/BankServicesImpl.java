package org.bankapp.bankservices.impl;

import java.util.ArrayList;
import java.util.List;
import org.bankapp.bankservices.BankServices;
import org.bankapp.domain.Bankuser1;

public class BankServicesImpl implements BankServices {

    private static List<Bankuser1> list = new ArrayList<Bankuser1>();

    public void createAccount(Bankuser1 bankuser1) {
        list.add(bankuser1);
    }

    public void deleteAccount(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void changeAccountDetails(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void createDebitCard(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void createCreditCard(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
