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
function back_list(){
	location.href = "/user/content/tcm/TextContentMgt.do";
}

function send_novel_info(){
	console.log('## tags..!');
	console.log(tagify.value);
	
	var thmFile = document.querySelector('#tumfile');
	if (thmFile.files.length == 0) {
        alert('썸네일 파일이 없습니다.');
        openModal(5);
    }
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
						    <input type="file" id="tumfile">
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
							<input id="tagInput" class="customTags" name="tags" placeholder="태그를 선택 또는 입력해주세요." value="">
						</div>
						
						<script src="https://unpkg.com/@yaireo/tagify"></script>
						<script src="<c:url value='/js/webpack/tagsSelector.js' />"></script>
						<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
					</div>
					
					<div class="novel-info-line-row">
						<div class="novel-info-sub-line-row">
							<div class="novel-info-sub-line-area">
								<div class="novel-wrap-title">
									<span>공개 여부 *</span>
								</div>
								<div class="novel-info-input-area">
									<select>
										<option>공개</option>
										<option>비공개</option>
									</select>
								</div>
							</div>
							<div class="novel-info-sub-line-area">
								<div class="novel-wrap-title">
									<span>연령 선택 *</span>
								</div>
								<div class="novel-info-input-area">
									<select>
										<option>전체 이용가</option>
										<option>15세 이용가</option>
										<option>19세 이용가</option>
									</select>
								</div>
							</div>
							<div class="novel-info-sub-line-area">
							</div>
						</div>
						
					</div>
					
					<div class="novel-info-line-col">
						<div class="novel-wrap-title">
							<span>작품 제목 *</span>
						</div>
						<div class="novel-info-guide-area">
							<p>작품에 등록하는 모든 이미지(표지, 삽화)는 작가 본인에게 저작권이 있거나 상업적으로 이용이 가능해야합니다.</p>
							<p>또한 표지 및 삽화 사용 규정에 위반한 경우 임의 삭제 또는 교체될 수 있으니 반드시 규정을 확인해주시기 바랍니다.</p>
							<br>
							<p>표지 및 삽화 등 이미지와 관련해 발생하는 모든 문제에 대해서 본 플랫폼은 책임지지 않습니다.</p>
							<p>위 내용을 반드시 숙지 후 표지 이용 부탁드립니다.</p>
						</div>
					</div>
					
					<div class="novel-info-btn-area">
						<button class="btn-back" onclick="back_list()">목록</button>
						<button class="btn-send" onclick="send_novel_info();">작품 등록</button>
					</div>
					
				</div>
			</div>
			
		</div>
	</div>
</div>

<script>
$("#tumfile").on('change',function(){
	var fileName = $("#tumfile").val();
	$(".upload-name").val(fileName);
});
</script>