/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bankapp.web.utils.RootServlet;

/**
 *
 * @author cmc5
 */
public class IbUseLloginController extends RootServlet {

    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String uName = request.getParameter("userName");
        out.println(uName);
        String accountNumber = request.getParameter("accountNumber");
        out.println(accountNumber);
        String vCode = request.getParameter("verificationCode");
        out.println(vCode);
        String password = request.getParameter("password");
        out.println(password);


    }
}
