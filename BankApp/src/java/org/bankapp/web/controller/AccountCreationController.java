/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.web.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
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
 * @author cmc5
 */
public class AccountCreationController extends RootServlet {

    private static final Logger LOG = Logger.getLogger(AccountCreationController.class);

    @Override
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

            FileItem Designation = list.get(2);
            String desgn = Designation.getString();

            FileItem dateofBirth = list.get(3);
            String dob = dateofBirth.getString();

            FileItem gender = list.get(4);
            String gndr = gender.getString();

            FileItem status = list.get(5);
            String sts = status.getString();

            FileItem doorNo = list.get(6);
            String dNo = doorNo.getString();

            FileItem streetName = list.get(7);
            String stName = streetName.getString();

            FileItem stateName = list.get(8);
            String statName = stateName.getString();

            FileItem phoneNo = list.get(9);
            String pNo = phoneNo.getString();

            FileItem email = list.get(10);
            String eml = email.getString();

            FileItem city = list.get(11);
            String cty = city.getString();

            FileItem country = list.get(12);
            String ctry = country.getString();

            FileItem pincode = list.get(13);
            String pcode = pincode.getString();

            FileItem profilepic = list.get(14);
            InputStream pfpic = profilepic.getInputStream();

            FileItem thumbPrint = list.get(15);
            InputStream tPrint = thumbPrint.getInputStream();

            FileItem proof = list.get(16);
            InputStream addressProof = proof.getInputStream();

            LOG.debug(addressProof.available());
            request.setAttribute("Msg", "Account created");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/accountantcreation.jsp");
            dispatcher.forward(request, response);
        } catch (FileUploadException ex) {
            System.out.println(ex.getMessage());
        }


    }
}
