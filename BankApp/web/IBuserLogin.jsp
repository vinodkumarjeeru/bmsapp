

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        
        <style type="text/css">
            #mydiv {
                position: relative;
                width: 400px;

                left: 470px;
            }

            body{

                background-color: bisque;

            } 

        </style>


        
        

        <title>Login</title>
    </head>
    <body>

        <h1 align='center'>LOGIN FORM</h1>
        <br/>
       
        <form>
            <div class ="form-group">

                <div class ="well  well-lg" id="mydiv" >
                    <div class ="form-group">
                        <label align ="center">User Name  </label>
                        <input type="text" name="userName" class ="form-control" />

                    </div>

                    <div class ="form-group">
                        <label align ="center">Account Number </label>
                        <input type="text" name="userName" class ="form-control" />
                    </div>

                    <div class ="form-group">
                        <label align ="center">Verification Code </label>
                        <input type="text" name="userName" class ="form-control" />

                    </div>

                    <div class ="form-group">

                        <label align ="center">Password</label>
                        <input type="password" class ="form-control" />
                    </div>
                    <div class ="form-group">
                        <button class ="btn btn-success">Submit</button>
                        <button class ="btn btn-danger" align="right">Reset</button> </div>
                </div>
            </div>

        </form>
      


    </body>
</html>
