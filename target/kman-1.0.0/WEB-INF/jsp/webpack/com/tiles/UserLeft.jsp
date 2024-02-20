<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:importAttribute name="headMenuList" />
<tiles:importAttribute name="leftMenuList" />

<aside>
    <div id="lnb">
    	<h2 data-bg="01" title="정보보호 서비스"><span>정보보호 서비스</span></h2>
        <ul class="dep01 show">
			 <li class="item">
				<a id="m_205002" href="#none" class="accordion ov" title="하위메뉴 접기">
					주요사업 소개
				</a>
				<ul class="dep02 show">
					<li><a id="mm_205005" href="/kr/subPage.do?menuNo=205007" class="ov">기업 서비스</a></li>
					<li><a id="mm_205006" href="/kr/subPage.do?menuNo=205017">개인 서비스</a></li>
				</ul>
			</li>
			 <li class="item">
				<a id="m_205003" href="/kr/apply/list.do?menuNo=205003">
					서비스 신청하기
				</a>
			</li>
			 <li class="item">
				<a id="m_205004" href="/kr/subPage.do?menuNo=205004">
					중소기업  피해지원
				</a>
			</li>
        </ul>
    </div>
</aside>

<%-- <div class="d-flex flex-column flex-shrink-0 menu_box">
	<ul class="nav nav-pills flex-column mb-auto">
		<c:forEach var="subMenuList" items="${leftMenuList}">
			<c:if test="${subMenuList.upperMenuNo eq sessionScope['headMenu']}">
				<li class="nav-item">
					<a href="<c:url value='${subMenuList.chkURL}' />" class="nav-link text-white" <c:if test="${subMenuList.menuNo eq leftMenu }">style="background-color: #003d7d;"</c:if> aria-current="page">
						<svg class="bi me-2" width="16" height="40">
							<use xlink:href="#home"></use>
						</svg>
						<c:out value="${subMenuList.menuNm}"/>
					</a>
				</li>
			</c:if>
		</c:forEach>
	</ul>
</div> --%>

