<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:importAttribute name="leftMenuList" />
<div class="main_left">
	<div class="left_inner">
		<div class="left_title"><span><c:out value="${sessionScope['headMenuNm']}"/></span></div>
		<div>
			<c:forEach var="subMenuList" items="${leftMenuList}">
				<c:if test="${subMenuList.upperMenuNo eq sessionScope['headMenu']}">
					<ul class="left_cat">
						 <li>
							<a <c:if test="${subMenuList.menuNo eq leftMenu }">class="selected"</c:if> href="<c:url value='${subMenuList.chkURL}' />">
								<c:out value="${subMenuList.menuNm}"/>
							</a>
						</li>
			        </ul>
				</c:if>
			</c:forEach>
	    </div>
	</div>
</div>

