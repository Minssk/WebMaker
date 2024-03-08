<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<c:set var="pageTitle">공지사항 게시판 등록</c:set>
<script type="text/javascript" src="<c:url value="/js/webpack/com/cmm/fms/EgovMultiFile.js"/>" charset="utf-8"></script>
<script type="text/javascript" src="<c:url value="/ckeditor5/build/ckeditor.js"/>"></script>
<script type="text/javascript" src="<c:url value="/ckeditor5/build/UploadAdapter.js"/>"></script>
<style>
	.ck-editor__editable { height: 500px;}
	.ck-content {font-size: 14px; line-height: 1.5;}
</style>

<script>
	function move_list(){
		var regisForm = document.getElementById("regisForm");
		regisForm.action = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeList.do";
		regisForm.submit();
	}
	
	function insert_notice(){
		var noticeTitle = document.querySelector('input[name="noticeTitle"]').value;
		var noticeCn = editor.getData();
		
		if(noticeTitle.replace(/\s| /gi, "").length == 0){
			alert("제목을 입력해주세요.");
			return false;
		} else if(noticeCn.replace(/\s| /gi, "").length == 0){
			alert("내용을 입력해주세요.");
			return false;
		}
		
		var form = document.getElementById("regisForm");
		var formData = new FormData(form);
		formData.append('noticeCn', noticeCn);
		var url = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeInsert.do";
		
		$.ajax({
	   		dataType: 'json',
	        url: url,
	        data: formData,
	        type : "POST",
	        enctype: 'multipart/form-data',
	        processData: false, 
	        contentType:false,
	        success : function(result) {
            	if(result.code == 'success') {
            		openModal(2);
            	}else if(result.code == 'E002') {
            		alert('해당파일의 확장자는 업로드할 수 없습니다.\n재 업로드 후 다시시도 부탁드립니다.');
            	}else{
            		alert('게시글을 저장할 수 없습니다.\n새로고침 후 다시시도 부탁드립니다. \n에러코드:' + result.code);
            	}
			},error : function(xhr, status, message){
				alert('게시글을 저장할 수 없습니다.\n새로고침 후 다시시도 부탁드립니다.');
			}
	    });
	}
</script>

<div class="main_content">
	<div>
		<h4 class="main_title"><c:out value="${pageTitle}"/></h4>
	</div>
	<form id="regisForm" method="post" enctype="multipart/form-data" onsubmit="return false;">
		<div class="table table_edit">
			<table>
				<colgroup>
					<col style="width: 15%;">
					<col style="width: *%;">
			    </colgroup>
				<tbody>
					<tr>
						<th><label for="title">제목</label></th>
						<td><input id="title" class="form_input" name="noticeTitle" type="text" value=""></td>
					</tr>
					<tr>
						<th><label for="content">내용</label></th>
						<td><div id="content" class="form_input"></div></td>
					</tr>
					<tr>
						<th><label for="content">첨부파일</label></th>
						<td class="sort_left">
							<input type="hidden" id="fileNumber" name="fileNumber" value="" />
							<input name="file_1" id="egovComFileUploader" type="file"/><!-- 첨부파일 -->
	   			 			<div id="egovComFileList"></div>
						</td>
					</tr>
					<tr>
						<th><label for="content">상단 고정 여부</label></th>
						<td class="sort_left">
							<input class="" type="radio" name="fixYn" id="chk1" value="N" checked>
							<label class="me-3" for="chk1">
								고정 안함
							</label>
							
							<input class="" type="radio" name="fixYn" id="chk2" value="Y">
							<label class="" for="chk2">
								고정
							</label>
						</td>
					</tr>
				</tbody>
			</table>
		</div> 
	</form>
	
	<div class="button_wrap">
		<button class="btn_01" onclick="insert_notice();">등록</button>
		<button class="btn_02" onclick="move_list();">목록</button>
	</div>
	
</div>

<script type="text/javascript">
	var maxFileNum = document.getElementById('fileNumber').value;
	if(maxFileNum==null || maxFileNum==""){
		maxFileNum = 3;
	}
	var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
	multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
	
	var editor;
	ClassicEditor
		.create(document.querySelector('#content'), {
			extraPlugins: [MyCustomUploadAdapterPlugin ],
			mediaEmbed: {
		        previewsInData: true
		    }
		})
	    .then( newEditor => {
	        editor = newEditor;
	})
	.catch( error => {
	    console.error(error);
	});
	
</script>