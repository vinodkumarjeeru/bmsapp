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
 * @author cmc11
 */
public class ChequeController extends RootServlet{

    @Override
    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String date = request.getParameter("date");
    
    
    String branchName = request.getParameter("branchName");
    
    String payAt = request.getParameter("payAt");
    
    String accnumber = request.getParameter("accnumber");
    
    String accname = request.getParameter("accname");
    
    String pay = request.getParameter("pay");
    
    String rupees = request.getParameter("rupees");
    
    String sign = request.getParameter("sign");
    
    
    response.sendRedirect("/adminlogin.jsp");
    
    
    
    }
    
}
