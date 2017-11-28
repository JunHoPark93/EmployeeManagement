<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--     <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="js/bigvideo.js"></script> -->
    
    
<!--     <link href="css/bigvideo/bigvideo.css" rel="stylesheet" /> -->
    <link href="http://vjs.zencdn.net/6.2.8/video-js.css" rel="stylesheet">

  	<!-- If you'd like to support IE8 -->
  	<script src="http://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
	<title>Home</title>
</head>

<script>
	
</script>
<body>
<h1>Home!</h1>

<video id="my-video" class="video-js" controls preload="auto" width="640" height="264"
  poster="MY_VIDEO_POSTER.jpg" data-setup="{}">
    <source src="MY_VIDEO.mp4" type='video/mp4'>
    <source src="MY_VIDEO.webm" type='video/webm'>
    <p class="vjs-no-js">
      To view this video please enable JavaScript, and consider upgrading to a web browser that
      <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
    </p>
  </video>

  <script src="http://vjs.zencdn.net/6.2.8/video.js"></script>

<sec:authorize access="isAnonymous()">
<p><a href="<c:url value="/login.do" />">로그인</a></p>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="로그아웃" />
</form:form>
</sec:authorize>

<%-- <h3>
    [<a href="<c:url value="/main.do" />">소개 페이지</a>]
    [<a href="<c:url value="/admin/adminHome.do" />">관리자 홈</a>]
</h3> --%>
</body>
</html>