<%-- 
    Document   : List
    Created on : 22 Apr, 2014, 3:00:36 PM
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
         <style type="text/css">
             #body{
                position:relative;
                left:320px;
                width:800px;
             }
    </style>
        
        <title>List</title>
    </head>
    <body>
      

        <div class="well well-sm" id="body">

            <div class="panel panel-primary">

                <div class="panel panel-heading"><h2 align="center">List</h2></div>


                <div class="panel panel-body">

                    <form>

                        <label>List</label>
                        <select class="form-control">
                            <option>All</option>
                            <option>Clerk</option>
                            <option>User</option>
                        </select>
                       
                        <table class="table table-bordered">
                            
                            <tr>
                                <th></th>
                                <th>ID</th>
                                <th>Name</th>
                                <th >Role</th>
                                <th>Action</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <td><input type='checkbox'/>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                 <td><input type='checkbox'/>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                 <td><input type='checkbox'/>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                             <td>
                                 <input type='checkbox'/>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            
                            
                        
                        </table>
                    </form>
                </div>
            </div>
        </div>
       
    </body>
</html>
