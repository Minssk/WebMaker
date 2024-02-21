<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap/bootstrap.min.css' /> " />
<script type="text/javascript" src="<c:url value='/js/bootstrap/bootstrap.min.js'/>" ></script>

<tiles:importAttribute name="headMenuList" />
<tiles:importAttribute name="leftMenuList" />
<tiles:importAttribute name="loginId" />

<header class="main-header">
    <div class="header-wrap max-view">
        <div class="header-logo-wrap">
            <img class="header-logo-img" src="<c:url value='/images/webpack/com/logo/webutility_logo.png'/>">
        </div>
        <div class="header-menu-wrap">
            <ul class="">
                <li><a>자유</a></li>
                <li><a>플러스</a></li>
                <li><a>랭킹</a></li>
                <li><a>웹만화</a></li>
                <li><a>내서재</a></li>
            </ul>
        </div>
        <div class="header-button-wrap">
            <img class="header-icon" src="<c:url value='/images/webpack/com/main/bell.svg'/>"></a>
            <a><img class="header-icon" src="<c:url value='/images/webpack/com/main/pencil-square.svg'/>"></a>
            <a><img class="header-icon" src="<c:url value='/images/webpack/com/main/search.svg'/>"></a>
            <a class="dropdown">
            	<img class="header-icon" src="<c:url value='/images/webpack/com/main/person-circle.svg'/>">
            </a>
            <ul class="dropdown-menu">
			    <li><button class="dropdown-item" type="button">Action</button></li>
			    <li><button class="dropdown-item" type="button">Another action</button></li>
			    <li><button class="dropdown-item" type="button">Something else here</button></li>
		  	</ul>
        </div>
    </div>
</header>

<%-- <ul class="navbar-nav mb-2 mb-lg-0 navbar-fixed-topd w-100 d-flex flex-row me-3 me-4 view_head_line">
	<c:forEach var="menuList" items="${headMenuList}">
		<a class="nav-link active" aria-current="page" href="<c:url value='${menuList.chkURL }' />"><c:out value="${menuList.menuNm}"/></a>
	</c:forEach>
</ul>
<img src="<c:url value='/images/webpack/com/icon/icon_appoval.svg'/>" class="header_img mx-2 me-3">
 --%>
 
<%-- <li class="nav-item dropdown">
<a class="nav-link dropdown-toggle fs-12" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	<c:out value="${loginId}"></c:out>
</a>
<ul class="dropdown-menu dropdown-menu-end">
    <li>
        <a href="#" class="dropdown-item header_ibox"
            onclick="goToApprovalMgt('')" title="결재함 보기">
   <img src="<c:url value='/images/webpack/com/icon/icon_appoval.svg'/>" class="header_img mx-2 me-3">
        <p>
            결재함
        </p>
    </a>
</li>
<li>
    <a href="#" class="dropdown-item header_ibox"
        onclick="open_modal('pledge')" title="서약서 관리 보기">
   <img src="<c:url value='/images/webpack/com/icon/icon_mgt.svg'/>" class="header_img mx-2 me-3">
        <p>
            서약서 관리
        </p>
    </a>
</li>
<li>
    <a href="#" class="dropdown-item header_ibox"
        onclick="open_modal('mail');" title="협업 메일 보기">
   <img src="<c:url value='/images/webpack/com/icon/icon_mail.svg'/>" class="header_img mx-2 me-3">
        <p>
            협업 메일
        </p>
    </a>
</li>
<li>
    <a href="#" class="dropdown-item header_ibox" onclick="open_modal('ach')"
   title="활동 이력 보기">
   <img src="<c:url value='/images/webpack/com/header/icon_log.svg'/>" class="header_img mx-2 me-3">
        <p>
            활동 이력
        </p>
    </a>
</li>
<li>
    <hr class="dropdown-divider">
</li>
<li>
    <a href="#" class="dropdown-item header_ibox" 
    	onclick="location.href='<c:url value='/uat/uia/actionLogout.do'/>'"  title="계정 로그아웃">
   <img src="<c:url value='/images/webpack/com/header/icon_logout.svg'/>" class="header_img mx-2 me-3">
                <p>
                    로그아웃
                </p>
            </a>
        </li>
    </ul>
</li> --%>