<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<%  
	response.setHeader("Cache-Control","no-store");  
	response.setHeader("Pragma","no-cache");  
	response.setDateHeader("Expires",0);  
	if (request.getProtocol().equals("HTTP/1.1"))
	        response.setHeader("Cache-Control", "no-cache");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><tiles:getAsString name="title"/></title>
		<link rel="icon" href="<c:url value='/images/webpack/com/login/pabi.png' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap/bootstrap.min.css' /> " />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/content.css' /> " />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/slide.css' /> " />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/layout.css' /> " />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/reset.css' /> " />
		
		<script type="text/javascript" src="<c:url value='/js/bootstrap/bootstrap.min.js'/>" ></script>
		<script type="text/javascript" src="<c:url value='/js/webpack/jquery-3.6.1.min.js'/>" ></script>
		
	</head>
	
	<body class="d-flex flex-column w-100 h-100 user_main_con">
		<div class="main_wrap">
			<div class="border-bottom d-flex header_container w-100">
				<tiles:insertAttribute name="header"/>
			</div>
			
		</div>
		<div class="d-flex flex-column w-100 h-100">
			<tiles:insertAttribute name="banner"/>
			
			<div class="w-100 h-100">
				<div class="d-flex flex-row justify-content-center w-100 h-100">
					<!-- 콘텐츠 시작 -->
					<tiles:insertAttribute name="left"/>
					<tiles:insertAttribute name="contents"/>
					<!-- 콘텐츠 종료 -->
				</div>
			</div>
		</div>
		<%-- <div class="footer_container w-100 border-top d-flex p-3 border-0">
			<tiles:insertAttribute name="footer"/>
		</div> --%>
	</body>
	
</html>