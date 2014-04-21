<%-- 
    Document   : accountCreation
    Created on : 18 Apr, 2014, 3:35:14 PM
    Author     : Sravya
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

                $('#accountantForm').submit(function() {
                    var status = true;
                    var firstName = $('#firstName').val();
                    var lastName = $('#lastName').val();
                    var designation = $('#designation').val();
                    var dateOfBirth = $('#dateOfBirth').val();
                    var doorNo = $('#doorNo').val();
                    var streetName = $('#streetName').val();
                    var stateName = $('#stateName').val();
                    var phNo = $('#phNo').val();
                    var email = $('#email').val();
                    var city = $('#city').val();
                    var country = $('#country').val();
                    var pinCode = $('#pinCode').val();
                    var image = $('#image').val();
                    var signature = $('#signature').val();
                    var doccument = $('#doccument').val();
                    if (firstName.length == 0 || firstName == null) {
                        $('#firstNameDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#firstNameDiv').removeClass('has-error');
                    }


                    if (lastName.length == 0 || lastName == null) {
                        $('#lastNameDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#lastNameDiv').removeClass('has-error');
                    }


                    if (designation.length == 0 || designation == null || designation == 'Select Your Option') {
                        $('#designationDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#designationDiv').removeClass('has-error');
                    }


                    if (dateOfBirth.length == 0 || dateOfBirth == null) {
                        $('#dateOfBirthDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#dateOfBirthDiv').removeClass('has-error');
                    }


                    if (doorNo.length == 0 || doorNo == null) {
                        $('#doorNoDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#doorNoDiv').removeClass('has-error');
                    }

                    if (streetName.length == 0 || streetName == null) {
                        $('#streetNameDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#streetNameDiv').removeClass('has-error');
                    }


                    if (stateName.length == 0 || stateName == null) {
                        $('#stateNameDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#stateNameDiv').removeClass('has-error');
                    }


                    if (phNo.length == 0 || phNo == null) {
                        $('#phNoDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#phNoDiv').removeClass('has-error');
                    }

                    if (email.length == 0 || email == null) {
                        $('#emailDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#emailDiv').removeClass('has-error');
                    }

                    if (city.length == 0 || city == null) {
                        $('#cityDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#cityDiv').removeClass('has-error');
                    }

                    if (country.length == 0 || country == null) {
                        $('#countryDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#countryDiv').removeClass('has-error');
                    }

                    if (pinCode.length == 0 || pinCode == null) {
                        $('#pinCodeDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#pinCodeDiv').removeClass('has-error');
                    }

                    if (image.length == 0 || image == null) {
                        $('#imageDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#imageDiv').removeClass('has-error');
                    }

                    if (signature.length == 0 || signature == null) {
                        $('#signatureDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#signatureDiv').removeClass('has-error');
                    }

                    if (doccument.length == 0 || doccument == null) {
                        $('#doccumentDiv').addClass('has-error');
                        status = false;
                    } else {
                        $('#doccumentDiv').removeClass('has-error');
                    }
                    if (status == false) {
                        return false;
                    }

                    $('#gender').attr('checked', 'checked');
                    $('#status').attr('checked', 'checked');
                });
            });
        </script>
    </script>

    <style type="text/css">
        #clerkcreationDiv {
            background-color: #428BCA;
        }
    </style>

    <title>Accountant Creation</title>
</head>
<body>

    <div class="container">
        <div class="jumbotron" id="clerkcreationDiv">
            <h2 align="center" class='bg-primary'>Accountant Creation</h2>
        </div>

        <div class="well well-sm">

            <div class="panel panel-primary">

                <div class="panel panel-heading">Accountant Details</div>


                <div class="panel panel-body">

                    <form method="post" id="accountantForm"/>

                    <div class="form-group" id="firstNameDiv">
                        <label class="control-label">First Name</label>
                        <input type="text" name="firstName" class="form-control" id="firstName"/>
                    </div>

                    <div class="form-group" id="lastNameDiv">
                        <label class="control-label">Last Name</label>
                        <input type="text" name="lastName" class="form-control" id="lastName"/>
                    </div>

                    <div class="form-group" id="designationDiv">
                        <label class="control-label" >Designation</label>
                        <select class="form-control" name="Designation" id="designation" >
                            <option>Select Your Option</option>
                            <option>Student</option>
                            <option> Government Employee</option>
                            <option>PrivateSector Employee</option>
                            <option>Unemployee</option>
                            <option>Senior Citizens</option>
                        </select>
                    </div>

                    <div class="form-group" id="dateOfBirthDiv">
                        <label class="control-label">Date Of Birth</label>
                        <input type="text" placeholder="DD-MM-YYYY" class="form-control" id="dateOfBirth"/>
                    </div>

                    <div class="form-group" id="genderDiv">
                        <label class="control-label" >Gender:</label><br/>
                        &nbsp;&nbsp;&nbsp;<input type="radio" class="radio radio-inline" name="gender" id="gender"/>Male
                        <input type="radio" class="radio radio-inline" name="gender"/>Female
                    </div>

                    <div class="form-group" id="statusDiv">
                        <label class="control-label">Status</label><br/>
                        <input type="radio" class="radio radio-inline" name="status" id="status"/>Married 
                        <input type="radio" class="radio radio-inline" name="status"/> Unmarried 
                    </div>

                    <div class="form-group" id="doorNoDiv">
                        <label class="control-label">Door No</label>
                        <input type="text" name="doorNo" class="form-control" id="doorNo"/>
                    </div>

                    <div class="form-group" id="streetNameDiv">
                        <label class="control-label">Street Name</label>
                        <input type="text" name="streetName" class="form-control" id="streetName"/>
                    </div>

                    <div class="form-group" id="stateNameDiv">
                        <label class="control-label">State Name</label>
                        <input type="text" name="stateName" class="form-control" id="stateName"/>
                    </div>    

                    <div class="form-group" id="phNoDiv">
                        <label class="control-label">Phone No</label>
                        <input type="text" name="phoneNo" class="form-control" id="phNo"/>
                    </div>

                    <div class="form-group" id="emailDiv">
                        <label class="control-label">Email</label>
                        <input type="email" name="email" class="form-control" id="email"/>
                    </div>

                    <div class="form-group" id="cityDiv">
                        <label class="control-label">City</label>
                        <input type="text" name="city" class="form-control" id="city"/>
                    </div>

                    <div class="form-group" id="countryDiv">
                        <label class="control-label">Country</label>
                        <input type="text" name="country" class="form-control" id="country"/>
                    </div>

                    <div class="form-group" id="pinCodeDiv">
                        <label class="control-label">Pin code</label>
                        <input type="text" name="pincode" class="form-control" id="pinCode"/>
                    </div>

                    <div class="form-group" id="imageDiv">
                        <label>Upload Image</label>
                        <input type="file" name="profilepic" class="form-control" id="image"/> 
                    </div>

                    <div class="form-group" id="signatureDiv">
                        <label>Upload Signature</label>
                        <input type="file" name="thumbPrint" class="form-control" id="signature"/> 
                    </div>

                    <div class="form-group" id="doccumentDiv">
                        <label>Upload Documents</label>
                        <input type="file" name="proof" class="form-control" id="doccument"/> 
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-success" value="Submit" id="submit"/> 
                        <input type="reset" class="btn btn-warning" value="Reset" id="reset"/> 
                    </div>

                    </form>
                </div>
            </div>
        </div>
</body>
</html>
