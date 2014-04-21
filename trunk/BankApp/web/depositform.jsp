<%-- 
    Document   : depositform
    Created on : 20 Apr, 2014, 4:02:54 PM
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

           
            #datediv{
                position:relative;
                left:400px;

            }


        </style>

        <title>DEPOSIT FORM</title>
    </head>
    <body>
        <div class="container">
        <div class="well well-lg"</div>
        <div class="well well-sm">
            <div class="panel panel-primary">

                <div class="panel panel-heading"><h3 align="center"> DEPOSIT FORM</h3></div>
                <div class="panel panel-body">



                    <form class="form-group"> 
                        <table class="table table-bordered table-hover table-striped" >
                            <tr>


                                <td><label>Payment Vocher Number</label></td>
                                <td><input type="text" class="form-control" ></td>

                                <td><label>Date</label></td>
                                <td><input type="text" class="form-control" ></td>

                            </tr>
                            <tr>

                                <td><label>Branch Name</label></td>
                                <td><input type="text" class="form-control"></td>

                            </tr>
                            <tr>

                                <td><label>Account Number</label></td>
                                <td><input type="text" class="form-control"></td>

                            </tr>
                            <tr>

                                <td><label>Customer Name</label></td>
                                <td><input type="text" class="form-control"></td>

                            </tr>
                        </table>
                        <table class="table-bordered table-hover table-striped">
                        <tr>
                           
                            <th><label class="form-control">denomination</label></th>  
                         <th><label class="form-control">no of notes</label></th> 
                         <th><label class="form-control">total amount</label></th>  
                        
                        </tr>
                        <tr>
                            <td>1000*</td>
                            <td><input type="text" class="form-control"</td>
                            <td><input type="text" class="form-control"</td>       
                   </tr>
                        <tr>
                            <td>500*</td>
                            <td><input type="text" class="form-control"</td>
                            <td><input type="text" class="form-control"</td>       
                   </tr>    
                            <tr>
                            <td>100*</td>
                            <td><input type="text" class="form-control"</td>
                            <td><input type="text" class="form-control"</td>       
                   </tr>   
                           <tr>
                            <td>10*</td>
                            <td><input type="text" class="form-control"</td>
                            <td><input type="text" class="form-control"</td>       
                   </tr>    
                       
                        </table>
                        
                        <table class="table table-bordered table-hover table-striped" > 
                            
                              <tr>

                                <td><label>Amount in Rupees</label></td>
                                <td><input type="text" class="form-control"></td>

                            </tr>  
                              <tr>

                                <td><label>Amount in Words</label></td>
                                <td><input type="text" class="form-control"></td>

                            </tr> 
                              <tr>

                                <td><label>Depositor Name</label></td>
                                <td><input type="text" class="form-control"></td>

                            </tr>        
                              <tr>

                                <td><label>Remarks/Reference(if any) </label></td>
                                <td><input type="text" class="form-control"></td>
                                 <td><label>Depositor ID </label></td>
                                <td><input type="text" class="form-control"></td>
                            </tr>     
                                
                        </table> 
                        
                   </div>
            </div>
        </div>
        </div>
    </body>
</html>

