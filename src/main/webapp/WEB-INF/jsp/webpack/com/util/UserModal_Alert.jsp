<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!-- alert modal -->
<div class="modal-wrap">
	<div class="modal-header">
		<div class="modal-header-remain">
		
		</div>
		<div class="modal-herader-title">
			<span><c:out value="${modalMap.mdHdTitle}"/></span>
		</div>
		<div class="modal-header-button">
			<div class="closed-btn-red"></div>
		</div>
	</div>
       <div class="modal-body">
       	<div class="modal-icon-circle">
       		<img src="/images/webpack/com/modal/com/bell.svg">
       	</div>
       	<div class="modal-icon-content-wrap">
       		<p class="modal-content-title"><c:out value="${modalMap.mdTitle}"/></p>
       		<p class="modal-content-main"><c:out value="${modalMap.mdMain}"/></p>
       	</div>
       	<div class="modal-content-btn-wrap">
       		<c:forEach var="result" items="${btnList}">
       			<c:choose>
       				<c:when test="${result.btnType eq 'href'}">
       					<button class="modal-end-point" onclick="location.href='<c:out value="${result.btnValue}"/>';" style="background:<c:out value="${result.btnColor }"/>;"><c:out value="${result.btnText}"/></button>
       				</c:when>
       				
       				<c:when test="${result.btnType eq 'function'}">
       					<button class="modal-end-point" onclick="<c:out value="${result.btnValue}"/>;" style="background:<c:out value="${result.btnColor }"/>;"><c:out value="${result.btnText}"/></button>
       				</c:when>
       			</c:choose>
       		</c:forEach>
       	</div>
       </div>
</div>