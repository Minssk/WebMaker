<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<c:set var="pageTitle">공지사항 게시판 목록</c:set>
<script type="text/javascript" src="<c:url value="/js/webpack/board-assist.js"/>"></script>

<script>
	function move_edit(){
		var searchForm = document.getElementById("searchForm");
		searchForm.action = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeEdit.do";
		searchForm.submit();
	}
	
	function move_detail(noticeId){
		var searchForm = document.getElementById("searchForm");
		searchForm.action = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeDetail.do";
		searchForm.noticeId.value = noticeId;
		searchForm.submit();
	}
	
	function move_Page(pageIndex){
		var regisForm = document.getElementById("searchForm");
		regisForm.action = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeList.do";
		regisForm.pageIndex.value = pageIndex;
		regisForm.submit();
	}
	
	function search_list(){
		var regisForm = document.getElementById("searchForm");
		regisForm.action = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeList.do";
		regisForm.pageIndex.value = 1;
		regisForm.submit();
	}
	
	function list_delete(){
		var url = "<c:out value="${pageContext.request.contextPath}"/><c:out value="${rootUrl}"/>/BoardNoticeListDelete.do";
		const checkboxes = document.querySelectorAll('input[name="deleteList"]:checked');
		const values = [];
	 	checkboxes.forEach((checkbox) => {
	 		values.push(checkbox.value);
	 	});
	 	$.ajax({
	   		dataType: 'json',
	        url: url,
	        data: JSON.stringify(values),
	        type : "POST",
	        contentType: "application/json;charset=UTF-8",
	        success : function(result) {
            	if(result.code == 'success') {
            		alert(result.message+'건 게시글이 삭제 되었습니다.');
            		const value = document.querySelector('input[name="pageIndex"]').value;
            		move_Page(value);
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
	<div class="table_info">
		<p>총 게시물 <span class="table_count"><c:out value="${paginationInfo.totalRecordCount}"/></span>건 페이지 
		<span class="table_current"><c:out value="${paginationInfo.currentPageNo}"/></span>/<span class="table_total"><c:out value="${paginationInfo.totalPageCount}"/></span><p>
	</div>
	<div class="table table_list">
		<table>
			<colgroup>
				<col style="width: 3%;">
				<col style="width: 5%;">
				<col style="width: *%;">
				<col style="width: 10%;">
				<col style="width: 10%;">
				<col style="width: 10%;">
		    </colgroup>
			<thead>
                   <tr>
                   	   <th scope="col"><input type="checkbox" class="allCheck"></th>
                       <th scope="col">번호</th>
                       <th scope="col">제목</th>
                       <th scope="col">조회수</th>
                       <th scope="col">작성자</th>
                       <th scope="col">게시일</th>
                   </tr>
               </thead>
			<tbody>
				<c:if test="${fn:length(noticeList) eq 0 }">
					<tr><td colspan="5">등록된 게시물이 없습니다.</td></tr>
				</c:if>
				<c:forEach var="fixList" items="${fixList}" varStatus="status">
					<tr class="fix_notice">
						<td colspan="2">공지</td>
						<td class="sort_left cus_pointer" onclick="move_detail('<c:out value="${fixList.noticeId}"/>')">
							<c:out value="${fixList.noticeTitle}"/>
						</td>
						<td><c:out value="${fixList.postViews}"/></td>
						<td><c:out value="${fixList.registId}"/></td>
						<td><fmt:formatDate value="${fixList.registDate}" pattern="yy.MM.dd"/></td>
					</tr>
				</c:forEach>
				<c:forEach var="noticeList" items="${noticeList}" varStatus="status">
					<tr>
						<td><input type="checkbox" class="check" name="deleteList" value="<c:out value="${noticeList.noticeId}"/>"></td>
						<td><c:out value="${noticeList.num}"/></td>
						<td class="sort_left cus_pointer" onclick="move_detail('<c:out value="${noticeList.noticeId}"/>')">
							<c:out value="${noticeList.noticeTitle}"/>
						</td>
						<td><c:out value="${noticeList.postViews}"/></td>
						<td><c:out value="${noticeList.registId}"/></td>
						<td><fmt:formatDate value="${noticeList.registDate}" pattern="yy.MM.dd"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div>
		<ul class="pagin">
			<ui:pagination paginationInfo="${paginationInfo}" type="typeOne" jsFunction="move_Page"/>
		</ul>
	</div>
	
	<div class="button_wrap">
		<button class="btn_01" onclick="move_edit()">등록</button>
		<button class="btn_03" onclick="list_delete()">선택 삭제</button>
	</div>
	
	<form id="searchForm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="noticeId" value="">
		<input type="hidden" name="pageIndex" value="<c:out value="${boardNoticeVO.pageIndex}"/>">
		<div class="search_box">
			<select class="input_search" name="searchKey">
				<option value="1" <c:if test="${boardNoticeVO.searchKey eq '1'}">selected</c:if>>제목</option> 
				<option value="2" <c:if test="${boardNoticeVO.searchKey eq '2'}">selected</c:if>>내용</option>
				<option value="3" <c:if test="${boardNoticeVO.searchKey eq '3'}">selected</c:if>>작성자</option>
			</select>
			<input type="text" class="txt_search" name=searchVal placeholder="검색어 입력" value="${boardNoticeVO.searchVal}" maxlength="255">
			<button class="button btn_04" onclick="search_list()">검색</button>
		</div>
	</form>
</div>

<script>
	
</script>