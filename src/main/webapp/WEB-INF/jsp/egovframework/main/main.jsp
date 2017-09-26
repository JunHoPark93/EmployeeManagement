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
                <h4 class="title">Edit Profile New Branch and Master Modified</h4>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label>Company (disabled)</label>
                            <input type="text" class="form-control" disabled placeholder="Company" value="Creative Code Inc.">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>회원아이디</label>
                            <input type="text" class="form-control" placeholder="Username" value="dfdf">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="exampleInputEmail1">이메일 주소</label>
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>이름</label>
                            <input type="text" class="form-control" placeholder="Company" value="qqq">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>닉네임</label>
                            <input type="text" class="form-control" placeholder="Last Name" value="ddd">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>가입이유</label>
                            <input type="text" class="form-control" placeholder="Home Address" value="wwww">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>주소</label>
                            <input type="text" class="form-control" placeholder="City" value="dfdfdf">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>상세주소</label>
                            <input type="text" class="form-control" placeholder="Country" value="zxczxc">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>우편번호</label>
                            <input type="number" class="form-control" placeholder="ZIP Code">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>About Me</label>
                            <textarea rows="5" class="form-control" placeholder="Here can be your description" value="Mike">dfdfdf</textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-info btn-fill pull-right">Ajax Test</button>
                <button type="submit" class="btn btn-info btn-fill pull-right">Ajax Test</button>
                
                <!-- Ajax Test Buttons -->
                <form method="post">
                	<button id="button1" value="park1" name="btn1" onclick="javascript:mainBtn.findEmployee()">button 1</button>
                	<button id="button2" value="park2" name="btn2">button 2</button>
                </form>                
                
                
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    
  	<div class="col-md-12">
           	<div class="card">
               	<div class="header">
                   	<h4 class="title">테이블 데이터베이스 테스트</h4>
                   	<p class="category">mysql연동중</p>
               	</div>
               	<div class="content table-responsive table-full-width">
                   	<table class="table table-hover table-striped" id="myTable">
                       	<thead>
                           	<th>FirstName</th>
                       		<th>LastName</th>
                       		<th>Email</th>
                       		<th>SSN</th>
                       		<th>City</th>
                       	</thead>
                       	<tbody>
<%--                         	<c:forEach items="${qq}" var="qq" varStatus="status">
                        		<tr>
                            		<td><c:out value="${qq.id}"/></td>
                            		<td><c:out value="${qq.userName}"/></td>
                            		<td><c:out value="${qq.age}"/></td>
                            		<td><c:out value="${qq.country}"/></td>
                            		<td><c:out value="${qq.etc}"/></td>
                            	</tr>
                        	</c:forEach> --%>
                       	</tbody>
                   	</table>
               </div>
           </div>
         </div>
</div>