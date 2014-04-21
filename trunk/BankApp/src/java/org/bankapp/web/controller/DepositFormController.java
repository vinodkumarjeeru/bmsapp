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
public class DepositFormController extends RootServlet {

    @Override
    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String payVocherNum = request.getParameter("payvocher");

        String date = request.getParameter("date");

        String branchName = request.getParameter("branchName");

        String accNum = request.getParameter("accountNumber");

        String custName = request.getParameter("customerName");

        String totalAmount = request.getParameter("totalAmount");

        String depositorName = request.getParameter("depositorName");

        String depositorId = request.getParameter("depositorId");

        out.println(payVocherNum);
        out.println(date);
        out.println(branchName);
        out.println(accNum);
        out.println(custName);
        out.println(totalAmount);
        out.println(totalAmount);
        out.println(depositorName);
        out.println(depositorId);
    }
}
