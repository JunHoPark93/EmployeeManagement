<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

var left = {
		
		// 공통 3줄로 스크립트 코드양 줄이기
		pageSubmitFn : function(pageName, url) {					
			$("#pageName").val(pageName); // input 태그의 value를 설정한다.
			console.log(pageName);
			$("#frm").attr("action",url); 				
			$("#frm").submit();					
		}
					
	}


	// input hidden name 전 페이지에서 보낸 값
	// name을 컨트롤러로 보낸다
	$(document).ready(function() {
		
		var pageName = "<c:out value="${param.pageName}"/>";
		$("[prop=menu]").removeClass("active"); 
		$("#"+pageName).addClass("active");
	});	
	
</script>


	<div class="sidebar" data-color="black" data-image="images/bootstrap/full-screen-image-3.jpg">
        <!--
            Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
            Tip 2: you can also add an image using data-image tag
        -->
        <div class="logo">
            <a href="http://www.creative-tim.com" class="logo-text">
                Jay Park
            </a>
        </div>
		<div class="logo logo-mini">
			<a href="http://www.creative-tim.com" class="logo-text">
				BM
			</a>
		</div>

    	<div class="sidebar-wrapper">
          <div class="user">
                <div class="photo">
                    <%-- <img src="https://s3.amazonaws.com/beautymaster/logo/${session}.jpg"/> --%>
                    <img src="images/bootstrap/bmlogo.jpg"/>
                </div>
                <%-- <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                        ${session}
                        <b class="caret"></b>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li><a href="#">My Profile</a></li>
                            <li><a href="#">Edit Profile</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </div>
                </div> --%>
            </div> 
            <ul class="nav">
                <li prop="menu" class="" id="mainMenu">
                    <a href="#" onclick="javascript:left.pageSubmitFn('mainMenu','main.do')">
                        <i class="pe-7s-graph"></i>
                        <p>HOME</p>
                    </a>
                </li>
                
                <li>
                    <a data-toggle="collapse" href="#componentsExamples"  aria-expanded="true">
                        <i class="pe-7s-plugin"></i>
                        <p>Employee Management
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="componentsExamples">
                        <ul class="nav">                           
                            <li prop="menu" class="" id="four1">
                               <a href="#" onclick="javascript:left.pageSubmitFn('out','out.do')">OUT</a>
                            </li>
                            <li prop="menu" class="" id="register">
                               <a href="#" onclick="javascript:left.pageSubmitFn('register', 'register.do')">Employee Register</a>
                            </li>
                            <li prop="menu" class="" id="selectddddd">
                               <a href="#" onclick="javascript:left.pageSubmitFn('uploadPage','uploadPage.do')">AWS TEST</a>
                            </li>
                             <li prop="menu" class="" id="admin">
                               <a href="#" onclick="javascript:left.pageSubmitFn('admin','admin.do')">Admin ONLY</a>
                            </li>
                        </ul>
                    </div>
                </li>
                            
                <li>
                    <a data-toggle="collapse" href="#componentsExamples2"  aria-expanded="true">
                        <i class="pe-7s-plugin"></i>
                        <p>Employee List
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="componentsExamples2">
                        <ul class="nav">
                            <li prop="menu" class="" id="campcreek">
                               <a href="#" onclick="javascript:left.pageSubmitFn('CampCreek','select.do')">Camp Creek</a>
                            </li>
                            <li prop="menu" class="" id="duluth">
                               <a href="#" onclick="javascript:left.pageSubmitFn('Duluth','select.do')">Duluth</a>
                            </li>
                            <li prop="menu" class="" id="greenbriar">
                               <a href="#" onclick="javascript:left.pageSubmitFn('GreenBriar','select.do')">Greenbriar</a>
                            </li>
                            <li prop="menu" class="" id="headland">
                               <a href="#" onclick="javascript:left.pageSubmitFn('HeadLand','select.do')">Headland</a>
                            </li>
                            <li prop="menu" class="" id="morrow">
                               <a href="#" onclick="javascript:left.pageSubmitFn('Morrow','select.do')">Morrow</a>
                            </li>
                            <li prop="menu" class="" id="oldnational">
                               <a href="#" onclick="javascript:left.pageSubmitFn('OldNational','select.do')">Old National</a>
                            </li>
                            <li prop="menu" class="" id="riverdale">
                               <a href="#" onclick="javascript:left.pageSubmitFn('Riverdale','select.do')">Riverdale</a>
                            </li>
                        </ul>
                    </div>
                </li>
                
                <li>
                    <a data-toggle="collapse" href="#componentsExamples3"  aria-expanded="true">
                        <i class="pe-7s-plugin"></i>
                        <p>Test4
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="componentsExamples3">
                        <ul class="nav">
                            <li prop="menu" class="" id="samjumenu">
                               <a href="#" onclick="javascript:left.pageSubmitFn('db', 'dbTest.do')">데이터 베이스 조회!</a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
    	</div>
    </div>