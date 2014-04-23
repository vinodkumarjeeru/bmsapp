<%-- 
    Document   : ibuserprofile
    Created on : 22 Apr, 2014, 4:33:57 PM
    Author     : cmc11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                var childDiv = $('#childDiv');
                $('#childDiv').click(function() {

                    $('#parentDiv').toggle('fast');

                });
            });

        </script>
        <style type="text/css">

            #childDiv{
                position:relative;
                left:1130px;
                width:50px;
                height:50px;
                top:-50px;
                z-index: 0;
            }

            #parentDiv{
                position:absolute;
                left:1000px;
                width:300px;
                height:200px;
                top:110px;
                border:1px solid white;
                background-color: white;
                z-index: 1000;
                display:none;
            }

            #userImage{
                position:relative;
                left:-5px;
                width:100px;
                height:100px;
                top:5px;
            }
            #buttonUpdate{
                position:relative;
                left:130px;
                width:80px;
                height:10px;
                top:-100px;
            } 
            #buttonProfile{
                position:relative;
                left:130px;
                width:80px;
                height:10px;
                top:-60px;
            } 
            #changePswd{
                position:relative;
                left:130px;
                width:80px;
                height:10px;
                top:-20px;
            } 

            #buttonLogout{
                position:relative;
                left:20px;
                width:80px;
                height:10px;
                top:-8px;
            } 

        </style>
        <title>ibuserprofile</title>
    </head>
    <body>
        <div class="well well-lg" id='body'>

            <div class="panel panel-primary">

                <div class="panel panel-heading"><h2 align='center'>IB User Profile</h2><div id='childDiv'><img alt=" " src="images/Koala.jpg" width="50" height="50" class="img img-circle"> </div>
                    <div id="parentDiv" class="well"> 
                        <div id="userImage">
                            <img alt=" " src="images/Koala.jpg" width="100" height="100" class="img img-rounded">  
                            <div id="buttonUpdate">
                                <a href="#" class="btn btn-success">Update</a>
                            </div>
                            <div id="buttonProfile">
                                <a href="#" class="btn btn-primary">View Balance</a>
                            </div>
                            <div id="changePswd">
                                <a href="#" class="btn btn-warning">Change Password</a>
                            </div>
                            <div id="buttonLogout">
                                <a href="#" class="btn btn-danger">Logout</a>
                            </div>

                        </div>


                    </div>
                </div>

                <div class="panel panel-body">

                    <form>

                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text" name="fstName" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Last Name</label>
                            <input type="text" name="lstName" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Mobile Number</label>
                            <input type="number" name="mobile" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Picture</label>
                            <input type="file" name="picture" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Signature</label>
                            <input type="text" name="sign" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Account Type</label>
                            <input type="text" name="accType" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Minimum Balance</label>
                            <input type="number" name="lstName" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Address Id</label>
                            <input type="text" name="addressId" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Door No</label>
                            <input type="text" name="dNo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Street Name</label>
                            <input type="text" name="streetName" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>City</label>
                            <input type="text" name="city" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Country</label>
                            <input type="text" name="country" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>District</label>
                            <input type="text" name="district" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>State</label>
                            <input type="text" name="state" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Pincode</label>
                            <input type="number" name="pincode" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Submit" id="submit"/> 
                            <input type="reset" class="btn btn-danger" value="Reset" id="reset"/> 
                        </div>
                    </form>
                    <div id="parentDiv">
                    </div>
                </div>
            </div>

    </body>
</html>
