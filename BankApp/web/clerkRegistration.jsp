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
            #myDiv3 {

                background-color: #428BCA;

            }
            #myDiv {
                position: relative;
                width: 300px;
                height: 30px;
                left: 0px;

            }

        </style>

        <title>APP | CLERK</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <br/>
        <div class="container">


            <div class="jumbotron" id="myDiv3">

                <h2 align="center">CLERK CREATION</h2>

            </div>


            <div class="well well-lg">



                <div class="panel panel-primary">

                    <div class="panel panel-heading">Clerk Details</div>


                    <div class="panel panel-body">


                        <form> 



                            <div class="form-group">
                                <label>FirstName</label>
                                <input type="password" name="firstName"class="form-control"/>


                            </div>
                            <div class="form-group">
                                <label>LastName</label>
                                <input type="password" name="lastName" class="form-control"/>


                            </div>


                            <div class="form-group">
                                <label>Father/Mother Name</label>
                                <input type="text" name="parentName" class="form-control"/>


                            </div>


                            <div class="form-group">
                                <label>Date Of Birth</label>

                            </div>




                            <div id="myDiv">




                                <select name="day">

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
                                    <option>16</option>
                                    <option>17</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                    <option>22</option>
                                    <option>23</option>
                                    <option>24</option>
                                    <option>25</option>
                                    <option>26</option>
                                    <option>27</option>
                                    <option>28</option>
                                    <option>29</option>
                                    <option>30</option>
                                    <option>31</option>
                                </select>
                                <select name="month">
                                    <option>Month</option>
                                    <option>January</option>
                                    <option>February</option>
                                    <option>March</option>
                                    <option>April</option>
                                    <option>May</option>
                                    <option>June</option>
                                    <option>July</option>
                                    <option>August</option>
                                    <option>September</option>
                                    <option>October</option>
                                    <option>November</option>
                                    <option>December</option>
                                </select>




                                <select name="year" class="form-group">
                                    <option>Year</option>
                                    <option>1986</option>
                                    <option>1987</option>
                                    <option>1988</option>
                                    <option>1989</option>
                                    <option>1990</option>
                                    <option>1991</option>
                                    <option>1992</option>
                                    <option>1993</option>
                                    <option>1994</option>
                                    <option>1995</option>
                                    <option>1996</option>
                                    <option>1998</option>
                                    <option>1999</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input type="text" name="age" class="form-control"/>


                            </div>
                            <div class="form-group">
                                <label>Gender:</label> <br/>
                                &nbsp;&nbsp;&nbsp;<input type="radio" class="radio radio-inline" name="gender"/>Male
                                <input type="radio" class="radio radio-inline" name="gender"/>Female
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="password" name="email" class="form-control"/>
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

