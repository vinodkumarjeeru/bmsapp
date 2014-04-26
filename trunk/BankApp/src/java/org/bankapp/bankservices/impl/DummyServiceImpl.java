/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.bankservices.impl;

import org.bankapp.bankservices.DummyService;
import org.apache.log4j.Logger;
import org.bankapp.domain.Dummy;
import org.bankapp.utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Sudarsan
 */
public class DummyServiceImpl implements DummyService {

    private static final Logger LOG = Logger.getLogger(DummyServiceImpl.class);
    private static final DummyServiceImpl IMPL = new DummyServiceImpl();

    
    
    private DummyServiceImpl() {
        
    }
    public static DummyService getDummyService() {
        return IMPL;
    }

    @Override
    public void create(Dummy dummy) {
        Session session = HibernateUtils.currentSession();
        Transaction tx = null;
        boolean rollback = true;

        try {
            tx = session.beginTransaction();
            session.saveOrUpdate(dummy);
            tx.commit();
            rollback = false;
        } catch (Exception exception) {
            LOG.warn("", exception);
        } finally {
            if (rollback && tx != null) {
                tx.rollback();
            }
            HibernateUtils.closeSession();
        }

    }
}
