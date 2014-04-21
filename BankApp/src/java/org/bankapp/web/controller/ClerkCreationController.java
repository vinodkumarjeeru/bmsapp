/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.Logger;
import org.bankapp.web.utils.RootServlet;

/**
 *
 * @author cmc9lab2
 */
public class ClerkCreationController extends RootServlet {

    private static Logger LOG = Logger.getLogger(ClerkCreationController.class);

    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List<FileItem> list = upload.parseRequest(request);
            FileItem firstName = list.get(0);
            String fName = firstName.getString();
            FileItem lastName = list.get(1);
            String lName = lastName.getString();
            FileItem parentName = list.get(2);
            String pName = parentName.getString();
            FileItem dob = list.get(3);
            String dateOfBirth = dob.getString();
            FileItem age = list.get(4);
            String clerkAge = age.getString();
            FileItem gender = list.get(5);
            String clerkGender = gender.getString();
            FileItem email = list.get(6);
            String clerkEmail = email.getString();
            FileItem phNo = list.get(7);
            String phoneNumber = phNo.getString();
            FileItem SecurityQuestion = list.get(8);
            String secQuestion = SecurityQuestion.getString();
            out.println(secQuestion);
//            LOG.debug(secQuestion);
            // FileItem answer = list.get(9);
            // String ans = answer.getString();
//            FileItem profilePicture = list.get(10);
//            InputStream picture = profilePicture.getInputStream();
        } catch (FileUploadException ex) {
            System.out.println(ex.getMessage());
        }
       // LOG.debug("Welcome To ClerkCreationController");

    }
}
