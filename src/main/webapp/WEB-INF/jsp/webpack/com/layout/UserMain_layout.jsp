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
		<tiles:insertAttribute name="title"/>
		
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/main/variable.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/main/main.css' /> " />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/main/reset.css' /> " />
		<script type="text/javascript" src="<c:url value='/js/webpack/jquery-3.6.1.min.js'/>" ></script>
	</head>
	<body>
		<div class="main-wrap min-view">
			<tiles:insertAttribute name="header"/>
			<tiles:insertAttribute name="nav"/>
			<tiles:insertAttribute name="contents"/>
			<tiles:insertAttribute name="footer"/>
		</div>
	</body>
</html>