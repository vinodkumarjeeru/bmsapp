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
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('#clerkForm').submit(function() {
                    var firstName = $('#firstName').val();
                    if (firstName.length == 0 || firstName == null) {
                        $('#firstNameDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#firstNameDiv').removeClass('has-error');
                    }

                    var lastName = $('#lastName').val();
                    if (lastName.length == 0 || lastName == null) {
                        $('#lastNameDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#lastNameDiv').removeClass('has-error');
                    }

                    var parentName = $('#parentName').val();
                    if (parentName.length == 0 || parentName == null) {
                        $('#parentNameDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#parentNameDiv').removeClass('has-error');
                    }

                    var dateOfBirth = $('#dateOfBirth').val();
                    if (dateOfBirth.length == 0 || dateOfBirth == null) {
                        $('#dateOfBirthDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#dateOfBirthDiv').removeClass('has-error');
                    }

                    var email = $('#email').val();
                    if (email.length == 0 || email == null) {
                        $('#emailDiv').addClass('has-error');
                        return false;

                    } else {
                        $('#emailDiv').removeClass('has-error');
                    }

                    var phNo = $('#phNo').val();
                    if (phNo.length == 0 || phNo == null) {
                        $('#phNoDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#phNoDiv').removeClass('has-error');
                    }

                    var SecurityQuestion = $('#SecurityQuestion').val();
                    if (SecurityQuestion.length == 0 || SecurityQuestion == null || SecurityQuestion == 'Select Your Option') {
                        $('#SecurityQuestionDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#SecurityQuestionDiv').removeClass('has-error');
                    }

                    var answer = $('#answer').val();
                    if (answer.length == 0 || answer == null) {
                        $('#answerDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#answerDiv').removeClass('has-error');
                    }

                    var image = $('#image').val();
                    if (image.length == 0 || image == null) {
                        $('#imageDiv').addClass('has-error');
                        return false;
                    } else {
                        $('#imageDiv').removeClass('has-error');
                    }



                    $('#gender').attr('checked', 'checked');
                });
            });
        </script>

        <style type="text/css">
            #clerkcreationDiv {
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
                <h2 align="center" class='bg-primary'>CLERK CREATION</h2>
            </div>

            <div class="well well-lg">

                <div class="panel panel-primary">

                    <div class="panel panel-heading">Clerk Details</div>

                    <div class="panel panel-body">

                        <form method="POST" id="clerkForm" enctype="multipart/form-data" action="${pageContext.request.contextPath}/createClerk">

                            <div class="form-group" id="firstNameDiv">
                                <label class="control-label">FirstName</label>
                                <input type="text" name="firstName"class="form-control" id="firstName"/>
                            </div>

                            <div class="form-group" id="lastNameDiv">
                                <label class="control-label">LastName</label>
                                <input type="text" name="lastName" class="form-control" id="lastName"/>
                            </div>

                            <div class="form-group" id="parentNameDiv">
                                <label class="control-label">Father/Mother Name</label>
                                <input type="text" name="parentName" class="form-control" id="parentName"/>
                            </div>

                            <div class="form-group" id="dateOfBirthDiv">
                                <label class="control-label">Date Of Birth</label>
                                <input type="text" placeholder="DD-MM-YYYY" class="form-control" id="dateOfBirth"/>
                            </div>

                            <div class="form-group" id="ageDiv">
                                <label class="control-label">Age</label>
                                <input type="text" readonly="readonly" class="form-control" value="5" id="age"/>
                            </div>

                            <div class="form-group" id="genderDiv">
                                <label class="control-label" >Gender:</label><br/>
                                &nbsp;&nbsp;&nbsp;<input type="radio" class="radio radio-inline" name="gender" id="gender"/>Male
                                <input type="radio" class="radio radio-inline" name="gender"/>Female
                            </div>

                            <div class="form-group" id="emailDiv">
                                <label class="control-label">Email</label>
                                <input type="email" name="email" class="form-control" id="email"/>
                            </div>

                            <div class="form-group" id="phNoDiv">
                                <label class="control-label">Phone No</label>
                                <input type="text" name="phNo" class="form-control" id="phNo"/>
                            </div>

                            <div class="form-group" id="SecurityQuestionDiv">
                                <label class="control-label" >Security Question</label>
                                <select class="form-control" id="SecurityQuestion" name="SecurityQuestion" >
                                    <option>Select Your Option</option>
                                    <option>What is nick name?</option>
                                    <option>Your favourite movie?</option>
                                    <option>Your favourite game?</option>
                                    <option>Book you like?</option>
                                    <option>Your habit?</option>
                                </select>                           
                            </div>

                            <div class="form-group" id="answerDiv">
                                <label class="control-label">Answer</label>
                                <input type="text" name="answer" class="form-control" id="answer"/>
                            </div>

                            <br/>

                            <div class="form-group" id="imageDiv">
                                <label class="control-label">Upload Image</label>
                                <input type="file" class="form-control" id="image" name="profilePicture"/> 
                            </div>
                            <br/>

                            <div class="form-group">
                                <input type="submit" class="btn btn-success" value="Submit" id="submit"/> 
                                <input type="reset" class="btn btn-warning" value="Reset" id="reset"/> 
                            </div>

                        </form>



                    </div>

                    <script type="text/javascript" src="js/jquery.js"></script>
                    <script type="text/javascript" src="js/bootstrap.min.js"></script>
                    </body>  
                    </html>

