<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<script type="text/javascript">

$(document).ready(function() {
	//mainBtn.
	$("#button1").click(function(event) {
		event.preventDefault();
	});
	
	$("#button2").click(function(event) {
		event.preventDefault();
	});
});

var mainBtn = {
	findEmployee : function(ssn) {
		ajaxCl.ajaxCallFn({url: "select1.do", FCGubun:"1111111111"});
	}
}

var ajaxCl = {
	ajaxCallFn : function(options) {
		

		var settings = {
			url : "select1.do",
			FCGubun : "F",
		}
		alert("ajaxCallFn called");
		alert(settings.url+"dddd");
		
		settings = $.extend({}, settings, options);
	
		alert(settings.url);
		
		$.ajax({
			type : "POST",
			url : settings.url,
			data : {"ssn" : settings.FCGubun},
			async : false,
			beforeSend : function(xhr) {
				alert("before in ajax");
			},
			success : function(result) {
				
				//var table = $("#myTable").DataTable();
				
				var jsonRes = JSON.parse(result);
				
				$("#myTable tr").remove();
				alert("jsonRes : " + jsonRes);
				$.each(jsonRes, function(i,item) {
					alert(i);
					alert(item.ssn_num);
					
					$('#myTable tbody').append("<tr><td>" + item.frst_nm + "</td><td>" + item.last_nm + "</td><td>"
							+ item.e_mail + "</td><td>" + item.ssn_num + "</td><td>" + item.city + "</td></tr>"); 
					//table.row.add([item.frst_nm, item.last_nm, item.e_mail, item.ssn_num, item.city]);
				});
				
				table.draw();
				
				alert(result);
			},
			error : function() {
				alert("error in ajax");
			}
		});
	}
}

</script>
 
<div class="row">
    <div class="col-md-8">
        <div class="card">
            <div class="header">
                <h4 class="title">Welcome to Beauty Master Employee Management System</h4>
            </div>
            <div align="center" class="embed-responsive embed-responsive-16by9">
			    <video autoplay loop class="embed-responsive-item">
			        <source src="https://s3.amazonaws.com/beautymaster/video/banner.mp4" type="video/mp4">
			    </video>
			</div>
        </div>
    </div>
</div>