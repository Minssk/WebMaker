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
		
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/com/commons.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/main/variable.css' />" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/content.css' /> " />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/main/main.css' /> " />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/main/reset.css' /> " />
		<script type="text/javascript" src="<c:url value='/js/webpack/jquery-3.6.1.min.js'/>" ></script>
	</head>
	<body>
		<div class="main-wrap min-view">
			<tiles:insertAttribute name="header"/>
			<div class="contents-area">
				<div class="contents-wrap">
					<tiles:insertAttribute name="contents"/>
				</div>
			</div>
			<tiles:insertAttribute name="footer"/>
		</div>
		
		<!-- Move TOP -->
		<div class="move-top"><img src="<c:url value='/images/webpack/com/main/arrow-up.svg'/>"></div>
		<script>
		$(".move-top").on("click",function(){
			$('html, body').animate({
				scrollTop : 0
			},400)
			return false;
		});
		</script>
		
		<!-- Load Icon -->
		<div id="load">
		    <img src="/images/webpack/com/header/Rhombus.gif" alt="loading">
		</div>
		<script>
			$(window).on('load', function() {
			    $('#load').hide();
			});
		</script>
		
		<!-- Modal Temp1 -->
		<div class="modal">
			<div class="modal-wrap">
				<div class="modal-header">
					<div class="modal-header-button">
						
					</div>
					<div class="modal-herader-title">
					
					</div>
					<div class="modal-header-close">
					
					</div>
				</div>
		        <div class="modal-body">
		        
		        </div>
			</div>
	    </div>
	    <style>
	        .modal{
	            position:absolute;
	            display:flex;
	            justify-content: center;
	            align-items: center;
	            top:0;
	            left:0;
	            width:100%;
	            height:100%;
	        }
	        .modal-wrap{
	        	display:flex;
	            flex-direction:column;
	            justify-content: center;
	            align-items: center;
	            width: 500px;
			    height: 230px;
			    border: 1px solid #373737;
			    border-radius: 10px;
			    overflow: hidden;
	        }
	        .modal-header{
	        	width: 100%;
	        	height: 30px;
	        	background-color: #373737;
	        	border: none;
	        	display: flex;
	        	align-items: center;
	        }
	        .modal-body{
			    background-color: white;
			    width: 100%;
			    height: 200px;
			    border: none;
	        }
	    </style>
	    <script>
	        const modal = document.querySelector('.modal');
	        const btnOpenModal=document.querySelector('.btn-open-modal');
	
	        btnOpenModal.addEventListener("click", ()=>{
	            modal.style.display="flex";
	        });
	    </script>
	    
	</body>
</html>



<%-- <body class="d-flex flex-column w-100 h-100 user_main_con">
	<tiles:insertAttribute name="header"/>
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
</body> --%>