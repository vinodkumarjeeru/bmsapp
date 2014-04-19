<%-- 
    Document   : clerkRegistration
    Created on : Apr 18, 2014, 7:02:41 PM
    Author     : cmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style type="text/css">
            #clerkcreationHeadDiv {
                background-color: #428BCA;
            }
            
        </style>
        <title>APP | CLERK</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <br/>
        <div class="container">
            <div class="jumbotron" id="clerkcreationDiv">
                <h2 align="center">CLERK CREATION</h2>
            </div>
            <div class="well well-lg">
                <div class="panel panel-primary">
                    <div class="panel panel-heading">Clerk Details</div>
                    <div class="panel panel-body">
                        <form method="POST"> 
                            <div class="form-group">
                                <label>FirstName</label>
                                <input type="text" name="firstName"class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>LastName</label>
                                <input type="text" name="lastName" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Father/Mother Name</label>
                                <input type="text" name="parentName" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Date Of Birth</label>
                                <input type="text" placeholder="DD-MM-YYYY" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input type="text" name="age" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Gender:</label><br/>
                                &nbsp;&nbsp;&nbsp;<input type="radio" class="radio radio-inline" name="gender"/>Male
                                <input type="radio" class="radio radio-inline" name="gender"/>Female
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Security Question</label>
                                <select class="form-control" name="SecurityQuestion">
                                    <option>Security Question</option>
                                    <option>What is nick name?</option>
                                    <option>Your favourite movie?</option>
                                    <option>Your favourite game?</option>
                                    <option>Book you like?</option>
                                    <option>Your habit?</option>
                                </select>                           
                            </div>
                            <br/>
                            <div class="form-group">
                                <label >Upload Image</label>
                                <input type="file" class="form-control"/> 
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-success" value="Submit"/> 
                                <input type="reset" class="btn btn-danger" value="Reset"/> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>  
</html>

