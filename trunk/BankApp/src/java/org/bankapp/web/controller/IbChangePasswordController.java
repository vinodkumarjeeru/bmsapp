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
import org.bankapp.web.utils.RootServlet;

/**
 *
 * @author cmc9lab2
 */
public class IbChangePasswordController extends RootServlet {

    @Override
    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String accountNumber = request.getParameter("accountNumber");

        String oldpswd = request.getParameter("oldpswd");

        String newpswd = request.getParameter("newpswd");

        String confirmpswd = request.getParameter("confirmpswd");
      
        request.setAttribute("msg", "Your password is changed");
        
        RequestDispatcher dispatcher=request.getRequestDispatcher("/ibUserChangePassword.jsp");
        
          dispatcher.forward(request, response);
    }
}
