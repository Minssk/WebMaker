<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<c:set var="pageTitle">내 작품 관리</c:set>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/contents/textcontent-mgt.css' />" />

<div class="main_content">
	<div>
		<h4 class="main_title"><c:out value="${pageTitle}"/></h4>
	</div>
	<div class="body-contents-area">
		<!-- 헤드 -->
		<div class="contents-header-area">
			<div class="contents-header-tab-area">
				<div class="contents-header-tab active">내 작품</div>
				<div class="contents-header-tab ">후원관리</div>
				<div class="contents-header-tab ">작품 통계</div>
				<div class="contents-header-tab ">정산</div>
			</div>
			<div class="contents-header-banner-area">
				<div class="contents-header-upper-banner">
					<img class="contents-header-upper-banner-icon" src="/images/webpack/user/textcontent/piggy-bank-fill.svg">
					현재까지 작가님께 후원된 금액 <span>0원</span> 누적되었습니다.
				</div>
				<div class="contents-header-down-banner">
					<div class="contents-header-down-banner-left">
						<img src="/images/webpack/user/textcontent/contents-banner.png">
					</div>
					<div class="contents-header-down-banner-right">
						<a><img src="/images/webpack/user/textcontent/pen-fill.svg"> 작품 쓰기</a>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div>
		
		</div>
	</div>
	
	
</div>