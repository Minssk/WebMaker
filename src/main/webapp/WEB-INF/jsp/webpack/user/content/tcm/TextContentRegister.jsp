<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<c:set var="pageTitle">작품 쓰기</c:set>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/webpack/user/contents/textcontent.css' />" />

<script>
function createNovel(){
	console.log('## tags..!');
	console.log(tagify.value);
}
</script>

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
					<div class="novel-info-line-col">
						<div class="novel-wrap-title">
							<span>작품 제목 *</span>
						</div>
						<div class="novel-info-input-area">
							<input type="text" placeholder="작품의 제목을 입력하세요.">
						</div>
					</div>
					
					<div class="novel-info-line-col">
						<div class="novel-wrap-title">
							<span>작품 설명 *</span>
						</div>
						<div class="novel-info-input-area">
							<textarea placeholder="작품의 설명을 입력하세요."></textarea>
						</div>
					</div>
					
					<div class="novel-info-line-row">
						<div class="novel-wrap-title">
							<span>연재 주기 *</span>
						</div>
						<div class="novel-info-input-area">
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>월요일</span>
							</label>
							
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>화요일</span>
							</label>
							
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>수요일</span>
							</label>
							
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>목요일</span>
							</label>
							
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>금요일</span>
							</label>
							
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>토요일</span>
							</label>
							
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>일요일</span>
							</label>
							
							<label class="novel-info-input-label">
								<input type="checkbox">
								<span>비주기</span>
							</label>
							
						</div>
					</div>
					
					<div class="novel-info-line-col">
						<div class="novel-wrap-title">
							<span>작품 태그 *</span>
						</div>
						<div class="novel-info-input-area">
							<input id="tagInput" class="customTags" name="tags" placeholder="태그를 선택하세요." value="">
						</div>
						
						<script src="https://unpkg.com/@yaireo/tagify"></script>
						<script src="<c:url value='/js/webpack/tagsSelector.js' />"></script>
						<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
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