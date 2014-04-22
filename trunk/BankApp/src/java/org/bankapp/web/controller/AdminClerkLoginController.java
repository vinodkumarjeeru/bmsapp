/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.bankapp.web.utils.RootServlet;

public class AdminClerkLoginController extends RootServlet {

    private static Logger LOG = Logger.getLogger(AdminClerkLoginController.class);

    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uName = request.getParameter("userName");
        String password = request.getParameter("password");
        LOG.debug(uName+password);
    }
}
