<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<c:set var="pageTitle">작품 쓰기</c:set>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/contents/textcontent.css' />" />

<div class="main_content">
	<div>
		<h4 class="main_title"><c:out value="${pageTitle}"/></h4>
	</div>
	<div class="body-contents-area">
		<div class="contents-body-content-wrap">
		
			<div class="novel-wrap">
				<div class="novel-cover-wrap">
					<div class="novel-wrap-title">
						<span>작품 표지 선택 *</span>
					</div>
					<div class="novel-cover-area">
						<div class="novel-cover-img-wrap">
							<!-- 900 1300 -->
							<img src="/images/webpack/user/textcontent/novel-cover-noen.png">
						</div>
					</div>
					<div class="novel-cover-controller-area">
						<div class="filebox">
						    <input class="upload-name" value="첨부파일" placeholder="첨부파일">
						    <label for="file">선택</label> 
						    <input type="file" id="file">
						</div>
					</div>
				</div>
				
				<div class="novel-info-wrap">
					<div class="novel-wrap-title">
						<span>작품 제목 *</span>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>

<script>
$("#file").on('change',function(){
	var fileName = $("#file").val();
	$(".upload-name").val(fileName);
});
</script>