/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.web.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.bankapp.bankservices.BankServices;
import org.bankapp.domain.Customer;
import org.bankapp.utils.BankServiceUtils;
import org.bankapp.web.utils.RootServlet;

public class AdminClerkLoginController extends RootServlet {

    private static Logger LOG = Logger.getLogger(AdminClerkLoginController.class);

    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");

        LOG.debug(userId);
        LOG.debug(password);
        BankServices service = BankServiceUtils.getInstance();
        Customer customer = service.getCustomerById(new Long(userId));
        System.out.println(customer);
        
        if (customer == null) {
            LOG.debug("Customer Not Avaliable (Or) Invalid Details are entered)");
            request.setAttribute("UserError", "Invalid Details are entered");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/AdminClrekLogin.jsp");
            dispatcher.forward(request, response);
            return;
        }
        response.sendRedirect("AdminHome.jsp");
        LOG.debug(userId + password);
    }
}
