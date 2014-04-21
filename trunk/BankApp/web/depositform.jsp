<%-- 
    Document   : depositform
    Created on : 20 Apr, 2014, 4:02:54 PM
    Author     : cmc5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <Script type="text/javascript">
            $(document).ready(function() {
                var total1, total2, total3, total4, total5;
                $('#tot1').focus(function() {
                    total1 = $('#tot1').val($('#thousands').html() * $('#num1').val());

                });
                $('#tot2').focus(function() {
                    total2 = $('#tot2').val($('#fivehundreds').html() * $('#num2').val());
                });

                $('#tot3').focus(function() {
                    total3 = $('#tot3').val($('#hundreds').html() * $('#num3').val());
                });

                $('#tot4').focus(function() {

                    total4 = $('#tot4').val($('#tens').html() * $('#num4').val());
                });

                $('#tot5').focus(function() {
                    total5 = $('#tot5').val($('#five').html() * $('#num5').val());
                });

                $('#totalAmount').focus(function() {

                    $('#totalAmount').val(parseInt(total1.val()) + parseInt(total2.val()) + parseInt(total3.val()) + parseInt(total4.val()) + parseInt(total5.val()));
                });

            });
        </Script>
        <style type="text/css">

            #small{

                background-color: #428bca;

            }
            #datediv{
                position:relative;
                left:400px;

            }
            #form{

                background-color: #afd9ee;

            }

        </style>

        <title>DEPOSIT FORM</title>
    </head>
    <body>
        <div class="container">
            <div class="well well-lg"></div>
            <div class="well well-sm" id="small" >
                <div class="panel panel-primary">

                    <div class="panel panel-heading"><h3 align="center"> DEPOSIT FORM</h3></div>
                    <div class="panel panel-body" id="form">



                        <form class="form-group" method="POST" action="${pageContext.request.contextPath}/depositAmount"> 
                            <table class="table table-bordered table-responsive table-condensed"  name="table1">
                                <tr>
                                    <td><label>Payment Voucher Number</label></td>
                                    <td><input type="text" class="form-control" name="payvocher" id="PVN"  ></td>
                                    <td><label>Date</label></td>
                                    <td><input type="text" class="form-control" name="date" id="date"></td>
                                </tr>
                                <tr>

                                    <td><label>Branch Name</label></td>
                                    <td><input type="text" class="form-control" name="branchName" id="branchName"></td>
                                </tr>
                                <tr>
                                    <td><label>Account Number</label></td>
                                    <td><input type="text" class="form-control" name="accountNumber" id="accountNumber"></td>
                                </tr>
                                <tr>
                                    <td><label>Customer Name</label></td>
                                    <td><input type="text" class="form-control" name="customerName" id="customerName"></td>
                                </tr>
                            </table>
                            <table class="table-bordered  " align="center" name="table2" >
                                <tr>
                                    <td align="center"><b>Denomination</b></td>  
                                    <td align="center"><b>No.Of Notes</b></td> 
                                    <th align="center"><b>Total Amount</b></th>  
                                </tr>
                                <tr>
                                    <td align="center" id="thousands"> 1000</td>
                                    <td><input type="text" class="form-control" id="num1"/></td>
                                    <td><input type="text" readonly="readonly" class="form-control" id="tot1"  onfocus="calc();"/></td>       
                                </tr>
                                <tr>
                                    <td align="center" id="fivehundreds" >500</td>
                                    <td><input type="text" class="form-control" id="num2"/></td>
                                    <td><input type="text" readonly="readonly" class="form-control"id="tot2" onfocus="sum();"/></td>       
                                </tr>    
                                <tr>
                                    <td align="center" id="hundreds">100</td>
                                    <td><input type="text" class="form-control" id="num3"/></td>
                                    <td><input type="text" readonly="readonly" class="form-control" id="tot3"/></td>       
                                </tr>   
                                <tr>
                                    <td align="center" id="tens">10</td>
                                    <td><input type="text" class="form-control" id="num4"/></td>
                                    <td><input type="text" readonly="readonly" class="form-control" id="tot4"/></td>       
                                </tr>    
                                <tr>
                                    <td align="center" id="five">5</td>
                                    <td><input type="text" class="form-control" id="num5"/></td>
                                    <td><input type="text" readonly="readonly" class="form-control" id="tot5"/></td>       
                                </tr>  
                                <tr>
                                    <td align="center"></td>
                                    <td><h4 align="center">total</h4></td>
                                    <td><input type="text" readonly="readonly" class="form-control" name="totalAmount"id="totalAmount"/></td>       
                                </tr> 
                            </table>

                            <table class="table table-bordered table-hover " name="table3">
                                <tr>
                                    <td><label>Amount in Rupees</label></td>
                                    <td><input type="text" class="form-control" name="amount" id="amt"/></td>
                                </tr>  
                                <tr>
                                    <td><label>Amount in Words</label></td>
                                    <td><input type="text" class="form-control" name="amt" id="amt"/></td>
                                </tr> 
                                <tr>
                                    <td><label>Depositor Name</label></td>
                                    <td><input type="text" class="form-control" name="depositorName" id="depositorName"/></td>
                                </tr>        
                                <tr>
                                    <td><label>Remarks/Reference(if any) </label></td>
                                    <td><input type="text" class="form-control" name="remarks" id="remarks"/></td>
                                    <td><label>Depositor ID </label></td>
                                    <td><input type="text" class="form-control" name="depositorId" id="depositorId"/></td>
                                </tr>     
                            </table> 
                            <div class="form-group">
                                <input data-loading-text="please Wait" type="submit" onclick="doWork();" class="btn btn-success" value="Submit"/> 
                                <input type="reset"  align="center"class="btn btn-danger" value="Reset"/> 
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
