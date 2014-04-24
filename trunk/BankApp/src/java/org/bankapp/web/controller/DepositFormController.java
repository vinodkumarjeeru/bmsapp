/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.bankapp.bankservices.BankServices;
import org.bankapp.domain.Balance;
import org.bankapp.domain.Customer;
import org.bankapp.utils.BankServiceUtils;
import org.bankapp.web.utils.RandomGenerator;
import org.bankapp.web.utils.RootServlet;

/**
 *
 * @author cmc5
 */
public class DepositFormController extends RootServlet {

    private static final Logger LOG = Logger.getLogger(DepositFormController.class);

    @Override
    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BankServices service = BankServiceUtils.getInstance();


        String date = request.getParameter("date");

        String accNum = request.getParameter("accountNumber");

        String custName = request.getParameter("customerName");

        String totalAmount = request.getParameter("totalAmount");

        String depositorName = request.getParameter("depositorName");

        // String depositorId = request.getParameter("depositorId");

        LOG.debug(date);
        LOG.debug(accNum);
        LOG.debug(custName);
        LOG.debug(totalAmount);
        LOG.debug(depositorName);
        // LOG.debug(depositorId);
        service.depositMoney(new Long(accNum), Double.parseDouble(totalAmount));
        String status="Transaction is Successfull, Thank You!";
        LOG.debug(status);
        request.setAttribute("msg", status);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/depositform.jsp");
        dispatcher.forward(request, response);




    }
}
