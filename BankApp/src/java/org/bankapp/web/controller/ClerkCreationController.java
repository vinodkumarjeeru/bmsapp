/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.web.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.bankapp.web.utils.RootServlet;

/**
 *
 * @author cmc9lab2
 */
public class ClerkCreationController extends RootServlet {

    public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
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
            FileItem SecurityQuestion = list.get(7);
            String secQuestion = SecurityQuestion.getString();
            FileItem profilePicture = list.get(8);
            InputStream picture = profilePicture.getInputStream();
            out.println("Entered Data:");
            out.println(picture.available() + secQuestion);





        } catch (FileUploadException ex) {
            System.out.println(ex.getMessage());
        }

    }
}
