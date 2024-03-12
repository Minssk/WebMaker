<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<c:set var="pageTitle">공지사항 게시판 상세보기</c:set>
<link rel="stylesheet" type="text/css" href="<c:url value='/ckeditor5/build/content-styles.css'/>"/>

<script>
	function move_list(){
		var regisForm = document.getElementById("regisForm");
		regisForm.action = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeList.do";
		regisForm.submit();
	}
	
	function move_update(){
		var regisForm = document.getElementById("regisForm");
		regisForm.action = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeUpdateDetail.do";
		regisForm.submit();
	}
	
	function delete_notice(noticeId){
		if(!confirm("정말로 해당 게시글을 삭제하시겠습니까?\n삭제하면 복구할 수 없습니다.")){
			return null;
		}
		
		var formData = new FormData();
		formData.append('noticeId', noticeId);
		var url = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeDelete.do";
		
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
            		openModal(5);
            	}else{
            		alert('게시글을 삭제할 수 없습니다.\n새로고침 후 다시시도 부탁드립니다.');
            	}
			},error : function(xhr, status, message){
				alert('게시글을 삭제할 수 없습니다.\n새로고침 후 다시시도 부탁드립니다.');
			}
	    });
	}
</script>

<div class="main_content">
	<div>
		<h4 class="main_title"><c:out value="${pageTitle}"/></h4>
	</div>
	<form id="regisForm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="noticeId" value="<c:out value="${resultMap.noticeId}"/>">
		<div class="table table_edit">
			<table>
				<colgroup>
					<col style="width: 15%;">
					<col style="width: *%;">
			    </colgroup>
				<tbody>
					<tr>
						<th><label for="title">제목</label></th>
						<td>
							<c:out value="${resultMap.noticeTitle}"/>
						</td>
					</tr>
					<tr>
						<th><label for="content">내용</label></th>
						<td class="ck-content">
							<c:out value="${resultMap.noticeCn}" escapeXml="false"/>
						</td>
					</tr>
					<tr>
						<th><label for="content">작성일</label></th>
						<td>
							<fmt:formatDate value="${resultMap.registDate}" pattern="yy.MM.dd        hh시 mm분"/>
						</td>
					</tr>
					<tr>
						<th><label for="content">첨부파일</label></th>
						<td>
							<c:choose>
								<c:when test="${not empty resultMap.atchFileId}">
									<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
										<c:param name="param_atchFileId" value="${resultMap.atchFileId}" />
									</c:import>
								</c:when>
								<c:otherwise>첨부파일이 없습니다.</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</tbody>
			</table>
		</div> 
	</form>
	
	<div class="button_wrap">
		<button class="btn_01" onclick="move_update();">수정</button>
		<button class="btn_03" onclick="delete_notice('<c:out value="${resultMap.noticeId}"/>');">삭제</button>
		<button class="btn_02" onclick="move_list();">목록</button>
	</div>
	
</div>

<script>
    document.querySelectorAll( 'oembed[url]' ).forEach( element => {
        iframely.load( element, element.attributes.url.value );
    } );
</script>