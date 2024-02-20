<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="pageTitle">텍스트 콘텐츠 관리</c:set>

<div class="main_content">
	<div>
		<h4 class="main_title"><c:out value="${pageTitle}"/></h4>
	</div>
	<p class="table_info">
		총 게시물 <span class="table_count">320</span>건 페이지 <span class="table_current">1</span>/<span class="table_total">5</span>
	</p>
	<div class="table table_list">
		<table>
			<colgroup>
				<col style="width: 10%;">
				<col style="width: 10%;">
				<col style="width: *%;">
				<col style="width: 10%;">
				<col style="width: 20%;">
		    </colgroup>
			<thead>
                   <tr>
                       <th scope="col" class="num">번호</th>
                       <th scope="col" class="date">카테고리</th>
                       <th scope="col" class="sbj">제목</th>
                       <th scope="col" class="count xs-hidden">조회수</th>
                       <th scope="col" class="date">게시일</th>
                   </tr>
               </thead>
			<tbody>
				<tr>
					<td class="num">320</td>
					<td class="date">내PC돌보미</td>
					<td class="sbj tal">
						<a href="www.naver.com">
							내PC 돌보미 서비스 이용은 어떻게 해야 하나요?								
						</a>
					</td>
					<td class="count xs-hidden">388</td>
					<td class="date">2023-04-18</td>
				</tr>
				<tr>
					<td class="num">320</td>
					<td class="date">내PC돌보미</td>
					<td class="sbj tal">
						<a href="www.naver.com">
							내PC 돌보미 서비스 이용은 어떻게 해야 하나요?								
						</a>
					</td>
					<td class="count xs-hidden">388</td>
					<td class="date">2023-04-18</td>
				</tr>
				<tr>
					<td class="num">320</td>
					<td class="date">내PC돌보미</td>
					<td class="sbj tal">
						<a href="www.naver.com">
							내PC 돌보미 서비스 이용은 어떻게 해야 하나요?								
						</a>
					</td>
					<td class="count xs-hidden">388</td>
					<td class="date">2023-04-18</td>
				</tr>
				<tr>
					<td class="num">320</td>
					<td class="date">내PC돌보미</td>
					<td class="sbj tal">
						<a href="www.naver.com">
							내PC 돌보미 서비스 이용은 어떻게 해야 하나요?								
						</a>
					</td>
					<td class="count xs-hidden">388</td>
					<td class="date">2023-04-18</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div>
		<ul class="pagin">
			<li class="current"><a onclick="return false;">1</a></li>

		</ul>
	</div>
	
</div>