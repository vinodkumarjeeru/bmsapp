<%-- 
    Document   : cheque
    Created on : Apr 20, 2014, 5:51:08 PM
    Author     : user
--%>



<html>
    <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <style type="text/css">

            body{
                background-color: bisque;
            } 

        </style>

        <title>Cheque</title>
    </head>
    <body>
        <div class="container">

            <div class="well well-sm">

                <div class="panel panel-primary">

                    <div class="panel panel-heading"><h2 align="center">Cheque Book Status online</h2></div>

                    <div class="panel panel-body">



                        <form class="form-group">

                            <div class="form-group">
                                <label>Date</label>
                                <input type="text" name="date" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <label>Branch Name</label>
                                <input type="text" name="branchName" class="form-control"/>
                            </div>   

                            <div class="form-group">
                                <label>Pay At</label>
                                <input type="text" name="payAt" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <label>A/C Number</label>
                                <input type="text" name="a/c number" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <label>A/C Name</label>
                                <input type="text" name="a/c name" class="form-control"/>
                            </div>



                            <div class="form-group">
                                <label>Amount in Rupees</label>
                                <input type="text" name="pay" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <label>Amount in Words</label>
                                <input type="text" name="rupees" class="form-control"/>
                            </div> 
                            <div class="form-group">
                                <label>Signature</label>
                                <input type="file" name="sign" class="form-control"/>
                            </div> 
                            <div class ="form-group">
                                <input type="submit" class="btn btn-success" value="Submit" />
                                <input type="reset" class="btn btn-danger" value="Reset"/> </div>
                    </div>
                    </form>






                </div>
            </div>
    </body>
</html>
