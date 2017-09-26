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
				Ct
			</a>
		</div>

    	<div class="sidebar-wrapper">
          <div class="user">
                <div class="photo">
                    <img src="images/bootstrap/default-avatar2.PNG" />
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                        Jay
                        <b class="caret"></b>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li><a href="#">My Profile</a></li>
                            <li><a href="#">Edit Profile</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </div>
                </div>
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
                        <p>Test
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="componentsExamples">
                        <ul class="nav">
                            <li prop="menu" class="" id="welcomeWebMenu">
                               <a href="#" onclick="javascript:left.pageSubmitFn('welcomeWebMenu','welcomeWeb.do')">Test Child1</a>
                            </li>
                            <li prop="menu" class="" id="four1">
                               <a href="#" onclick="javascript:left.pageSubmitFn('select','select.do')">Test Child2</a>
                            </li>
                            <li prop="menu" class="" id="four2">
                               <a href="#" onclick="javascript:left.pageSubmitFn('register', 'register.do')">Test Child3</a>
                            </li>
                        </ul>
                    </div>
                </li>
                            
                <li>
                    <a data-toggle="collapse" href="#componentsExamples2"  aria-expanded="true">
                        <i class="pe-7s-plugin"></i>
                        <p>Test Form
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="componentsExamples2">
                        <ul class="nav">
                            <li prop="menu" class="" id="samJu">
                               <a href="#" onclick="javascript:left.pageSubmitFn('formTest','formTest.do')">폼테스트 하위</a>
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