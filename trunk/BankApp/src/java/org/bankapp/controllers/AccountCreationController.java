/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bankapp.web.utils.RootServlet;

/**
 *
 * @author cmc9lab2
 */
public class AccountCreationController extends RootServlet {
    
    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        String name = request.getParameter("firstName");
        writer.println(name);
       
    }
}
