<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<link rel="icon" type="image/png" href="images/bootstrap/favicon.ico">

<!-- Bootstrap core CSS     -->
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" />

<!--  Light Bootstrap Dashboard core CSS    -->
<link href="css/bootstrap/light-bootstrap-dashboard.css"
	rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="css/bootstrap/demo.css" rel="stylesheet" />

<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href="css/bootstrap/pe-icon-7-stroke.css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>

<!-- StreetAddress API -->
<script
	src="//d79i1fxsrar4t.cloudfront.net/jquery.liveaddress/4.0/jquery.liveaddress.min.js"></script>

<script>
	// street api
	var liveaddress = $.LiveAddress({
		key : "27443860329414224",
		debug : false,
		target : "US|INTERNATIONAL",
		addresses : [ {
			address1 : '#street-address',
			locality : '#city',
			administrative_area : '#state',
			postal_code : '#zip',
			country : '#country'
		} ]
	});
</script>


<script type="text/javascript">
	
</script>

<form id="frm" name="frm">
	<input type="hidden" id="pageName" name="pageName" /> <input
		type="hidden" id="test" name="test" value="test" />
</form>


<title>Beauty Master Employee Management</title>