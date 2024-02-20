<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:importAttribute name="headMenuList" />
<tiles:importAttribute name="leftMenuList" />
<tiles:importAttribute name="loginId" />


<div class="banner_container">
	<div class="banner_title">
		<span><c:out value="${sessionScope['menuName']}"/></span>
	</div>
		
</div>
<div class="banner_path">
	<div class="banner_box inner">
		<div class="banner_inner">
			<img src="<c:url value='/images/webpack/com/banner/home.png'/>" class="home_icon">
			<span class="arrow_span me-2">
				<a href="/">
					<em class="sound">메인 페이지</em>
				</a>
			</span>
			<span class="arrow_span me-2"><a href="/"><c:out value="${sessionScope['headMenuNm']}"/></a></span>		 
			<span class="arrow_span"><a href="/"><c:out value="${sessionScope['menuName']}"/></a></span>
		</div>
	</div>
</div>


