<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>

<head>
	<!-- <meta charset="utf-8" />
	<link rel="icon" type="image/png" href="images/bootstrap/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Light Bootstrap Dashboard PRO by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
    
	   Bootstrap core CSS    
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	
	 Light Bootstrap Dashboard core CSS   
	<link href="css/bootstrap/light-bootstrap-dashboard.css"
		rel="stylesheet" />
	
	 CSS for Demo Purpose, don't include it in your project    
	<link href="css/bootstrap/demo.css" rel="stylesheet" />
	
	    Fonts and icons    
	<link
		href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
		rel="stylesheet">
	<link href="css/bootstrap/pe-icon-7-stroke.css" rel="stylesheet" />
	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
 -->
</head>
<body> 




<nav class="navbar navbar-transparent navbar-absolute">
    <div class="container">    
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../dashboard.html">Light Bootstrap Dashboard PRO</a>
        </div>
        <div class="collapse navbar-collapse">       
            
            <ul class="nav navbar-nav navbar-right">
                <li>
                   <a href="register.html">
                        Register
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="wrapper wrapper-full-page">
    <div class="full-page login-page" data-color="orange" data-image="images/full-screen-image-1.jpg">   
        
    <!--   you can change the color of the filter page using: data-color="blue | azure | green | orange | red | purple" -->
        <div class="content">
            <div class="container">
                <div class="row">                   
                    <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                    	<c:url value="/login" var="loginUrl" />
                        <form name="f" action="${loginUrl}" method="POST" >
                        
                            
                        <!--   if you want to have the card without animation please remove the ".card-hidden" class   -->
                            <div class="card card-hidden">
                                <div class="header text-center">Login</div>
                                <div class="content">
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <input type="text" id="id" name="id" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" id="pw" name="pw" placeholder="Password" class="form-control">
                                    </div>                                    
                                    <div class="form-group">
                                        <label class="checkbox">
                                            <input type="checkbox" data-toggle="checkbox" value="">
                                            Subscribe to newsletter
                                        </label>    
                                    </div>
                                </div>
                                <div class="footer text-center">
                                    <button type="submit" class="btn btn-fill btn-warning btn-wd">Login</button>
                                </div>
                            </div>
                            
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
                                
                        </form>
                                
                    </div>                    
                </div>
            </div>
        </div>
      </div>
     </div>
</body>

<!--  <script src="js/bootstrap/jquery-ui.min.js" type="text/javascript"></script>
<script src="js/bootstrap/bootstrap.min.js" type="text/javascript"></script>

 Forms Validations Plugin
<script src="js/bootstrap/jquery.validate.min.js"></script>

 Plugin for Date Time Picker and Full Calendar Plugin
<script src="js/bootstrap/moment.min.js"></script>

 Date Time Picker Plugin is included in this js file
<script src="js/bootstrap/bootstrap-datetimepicker.js"></script>

 Select Picker Plugin
<script src="js/bootstrap/bootstrap-selectpicker.js"></script>

 Checkbox, Radio, Switch and Tags Input Plugins
<script src="js/bootstrap/bootstrap-checkbox-radio-switch-tags.js"></script>

 Charts Plugin
<script src="js/bootstrap/chartist.min.js"></script>

 Notifications Plugin   
<script src="js/bootstrap/bootstrap-notify.js"></script>

Sweet Alert 2 plugin
<script src="js/bootstrap/sweetalert2.js"></script>

Vector Map plugin
<script src="js/bootstrap/jquery-jvectormap.js"></script>

Wizard Plugin   
<script src="js/bootstrap/jquery.bootstrap.wizard.min.js"></script>

 Bootstrap Table Plugin   
<script src="js/bootstrap/bootstrap-table.js"></script>

 Plugin for DataTables.net 
<script src="js/bootstrap/jquery.datatables.js"></script>

 Full Calendar Plugin   
<script src="js/bootstrap/fullcalendar.min.js"></script>

Light Bootstrap Dashboard Core javascript and methods
<script src="js/bootstrap/light-bootstrap-dashboard.js"></script>

Light Bootstrap Dashboard DEMO methods, don't include it in your project!
<script src="js/bootstrap/demo.js"></script>
	    
    <script type="text/javascript">
        $().ready(function(){
            lbd.checkFullPageBackgroundImage();
            
            setTimeout(function(){
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
    </script> -->
</html>
    
