<%-- 
    Document   : index
    Created on : 18 Apr, 2014, 3:35:14 PM
    Author     : Sravya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style type="text/css">
            #myDiv {
                position: relative;
                width: 100px;
                height: 100px;
                left: 100px;
                width: 100px;
            }
            body{
                background-color: gray;
            }
        </style>

        <title>Accountant Creation</title>
    </head>
    <body>

        <div class="container">

            <div class="well well-sm">

                <div class="panel panel-primary">

                    <div class="panel panel-heading">Accountant Details</div>


                    <div class="panel panel-body">


                        <form method="POST" action="${pageContext.request.contextPath}/createAccount"> 



                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" name="firstName" class="form-control"/>


                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" name="lastName" class="form-control"/>


                            </div>

                            <div class="form-group">
                                <label>Designation</label>
                                <select class="form-control" name="designation">

                                    <option>select</option>
                                    <option>Student</option>
                                    <option> Government Employee</option>
                                    <option>PrivateSector Employee</option>
                                    <option>Unemployee</option>
                                    <option>Senior Citizens</option>




                                </select>


                            </div>
                            <div class="form-group">
                                <label>Date Of Birth</label>

                                <select>
                                    <option>Day</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                    <option>15</option>


                                </select>

                                <select>
                                    <option>Month</option>
                                    <option>Jan</option>
                                    <option>feb</option>
                                    <option>Mar</option>
                                    <option>Apr</option>
                                    <option>May</option>
                                    <option>Jun</option>
                                    <option>Jul</option>
                                    <option>Aug</option>
                                    <option>Sep</option>
                                    <option>Oct</option>
                                    <option>Nov</option>
                                    <option>Dec</option>



                                </select>
                                <select>
                                    <option>Year</option>
                                    <option>1881</option>
                                    <option>1882</option>
                                    <option>1883</option>
                                    <option>1884</option>
                                    <option>1885</option>
                                    <option>1886</option>
                                    <option>1887</option>
                                    <option>1888</option>
                                    <option>1889</option>
                                    <option>1990</option>
                                    <option>1991</option>


                                </select>


                            </div>


                            <div class="form-group">
                                <label>Gender</label>
                                <br/>
                                <input type="radio" class="radio radio-inline" name="gender"/>Male
                                <input type="radio" class="radio radio-inline" name="gender"/> Female


                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <br/>
                                <input type="radio" class="radio radio-inline" name="status"/>Married 
                                <input type="radio" class="radio radio-inline" name="status"/> Unmarried 


                            </div>



                            <div class="form-group">

                                <label>Door No</label>
                                <input type="text" name="doorNo" class="form-control"/>
                                <label>Street Name</label>
                                <input type="text" name="streetName" class="form-control"/>
                                <label>State Name</label>
                                <input type="text" name="stateName" class="form-control"/>
                                <label>Phone No</label>
                                <input type="text" name="phoneNo" class="form-control"/>
                                <label>Email</label>
                                <input type="email" name="email" class="form-control"/>
                                <label>City</label>
                                <input type="text" name="city" class="form-control"/>
                                <label>Country</label>
                                <input type="text" name="country" class="form-control"/>
                                <label>Pincode</label>
                                <input type="text" name="pincode" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Upload Image</label>
                                <input type="file" name="profilepic" class="form-control"/> 
                            </div>
                            <div class="form-group">
                                <label>Upload Signature</label>
                                <input type="file" name="thumbPrint" class="form-control"/> 
                            </div>
                            <div class="form-group">
                                <label>Upload Documents</label>
                                <input type="file" name="proof" class="form-control"/> 
                            </div>
                            <div class="form-group">
                                <input data-loading-text="please Wait" type="submit"  class="btn btn-success" value="Submit"/> 
                                <input type="reset"  class="btn btn-danger" value="Reset"/> 
                            </div>
                        </form>

                    </div>
                </div>
            </div>
    </body>
</html>
