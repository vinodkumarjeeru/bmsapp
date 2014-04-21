<%-- 
    Document   : ibuserforgotpassword
    Created on : 20 Apr, 2014, 3:48:20 PM
    Author     : cmc5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style type="text/css">
           
            #well{
                position:relative;
                top:60px;
                height:500px;
                width:700px;
                left:250px;
                background-color: #3276b1;
            }
            #header{
                background-color: #46b8da;
            }
           
        </style>
        
    </head>
    <body>
        <div class="container">
            <div class="well well-sm" id="well">
                <div class="panel panel-heading" id="header"><h3 align="center">Forgot Password</h3></div>
            <div class="panel panel-body">
                <form>
                    
                     <div class="form-group">
                                <label>Account Number</label>
                                <input type="text" name="accountNumber" class="form-control"/>
                    
                     </div>
                      <div class="form-group">
                                <label>User Name</label>
                                <input type="email" name="email" class="form-control"/>
                      </div>
                    
                    <div class="form-group">
                                <label>Security Question</label>
                                <select class="form-control" name="secQuestion">

                                    <option>select</option>
                                    <option>What is your birth place</option>
                                    <option>What is your nickname </option>
                                    <option>Who is your favourite classTeacher</option>
                                    <option>What is your close Friend's name</option>
                                    </select>
                  </div>
                   <div class="form-group">
                                <label>Answer</label>
                                <input type="text" name="answer" class="form-control"/>
                   </div>
                  <div class="form-group">
                      <input type="submit" class='btn btn-success' value="Submit"/>
                      <input type="reset"  class="btn btn-danger" value="Reset"/>
                  </div>
                </form>
   
            </div>
            </div>
            
            </div>
    </body>
</html>

