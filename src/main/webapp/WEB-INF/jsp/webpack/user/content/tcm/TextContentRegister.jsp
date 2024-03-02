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
		<div class="contents-body-wrap">
			<div class="contents-body-row">
				<div class="contents-body-content-wrap">
					<div class="contents-body-cover-wrap">
						<img class="contents-body-cover" src="/images/webpack/com/main/board/1.png">
					</div>
					<div class="contents-body-info-wrap">
						<div class="contents-body-title-area">
							<span class="contents-title">누가은비 머리에 똥을 싸고 튀었나!</span>
							<span class="contents-writer">김민수</span>
						</div>
						<div class="contents-body-info-area">
							<!-- 150 제한 -->
							<span class="contents-info">
								어느날 은비의 머리 위에 누군가 똥을 싸고 튀었다.
								과연 잡을 수 있을 것인가? 숨막히는 범인과의 쫒고 쫒기는 추격전
							</span>
						</div>
						<div class="contents-body-tag-area">
							<span>#추리</span>
							<span>#스릴러</span>
							<span>#범죄</span>
							<span>#베스트셀러</span>
							<span>#추천도서</span>
							<span>#랭킹</span>
							<span>#수사</span>
							<span>#탐정</span>
							<span>#추격</span>
						</div>
						<div class="contents-data-area">
							<div class="contents-data-col">
								<!-- 조회수 -->
								<img src="/images/webpack/user/textcontent/eye.svg">
								<span>585991회</span>
							</div>
							<div class="contents-data-col">
								<!-- 선작수 -->
								<img src="/images/webpack/user/textcontent/person-fill.svg">
								<span>100582명</span>
							</div>
							<div class="contents-data-col">
								<!-- 좋아요수 -->
								<img src="/images/webpack/user/textcontent/hand-thumbs-up.svg">
								<span>786659개</span>
							</div>
							<div class="contents-data-col">
								<!-- 회차 수 -->
								<img src="/images/webpack/user/textcontent/journals.svg">
								<span>497회차</span>
							</div>
						</div>
					</div>
				</div>
					
				<div class="contents-body-button-wrap">
					<button>
						<img src="/images/webpack/com/main/pencil-square.svg">
						회차작성
					</button>
					<button>
						<img src="/images/webpack/com/main/dropdown/gear.svg">
						소설관리
					</button>
					<button>
						<img src="/images/webpack/user/textcontent/bar-chart-line.svg">
						소설통계
					</button>
					<button>
						<img src="/images/webpack/user/textcontent/plus-circle.svg">
						플러스 전환
					</button>
				</div>
			</div>
			
			<div class="contents-body-row">
				<div class="contents-body-content-wrap">
					<div class="contents-body-cover-wrap">
						<img class="contents-body-cover" src="/images/webpack/com/main/board/5.png">
					</div>
					<div class="contents-body-info-wrap">
						<div class="contents-body-title-area">
							<span class="contents-title">배달의 민족에서 성공하는 법</span>
							<span class="contents-writer">김민수</span>
						</div>
						<div class="contents-body-info-area">
							<!-- 150 제한 -->
							<span class="contents-info">
								미군이 총만 쏘면 돈을 잔뜩 준다길래 이라크 팔루자 옥상에서 일하던 것 뿐인데
								이젠 세계평화를 다 지키라고 해!
								그냥 한탕 땡기고 튈 생각밖에 없었는데 왜 이렇게 된거지
							</span>
						</div>
						<div class="contents-body-tag-area">
							<span>#배달의민족</span>
							<span>#자수성가</span>
							<span>#자서전</span>
							<span>#소설</span>
							<span>#추천도서</span>
							<span>#랭킹</span>
							<span>#요리</span>
						</div>
						<div class="contents-data-area">
							<div class="contents-data-col">
								<!-- 조회수 -->
								<img src="/images/webpack/user/textcontent/eye.svg">
								<span>17643회</span>
							</div>
							<div class="contents-data-col">
								<!-- 선작수 -->
								<img src="/images/webpack/user/textcontent/person-fill.svg">
								<span>865명</span>
							</div>
							<div class="contents-data-col">
								<!-- 좋아요수 -->
								<img src="/images/webpack/user/textcontent/hand-thumbs-up.svg">
								<span>955개</span>
							</div>
							<div class="contents-data-col">
								<!-- 회차 수 -->
								<img src="/images/webpack/user/textcontent/journals.svg">
								<span>172회차</span>
							</div>
						</div>
					</div>
				</div>
					
				<div class="contents-body-button-wrap">
					<button>
						<img src="/images/webpack/com/main/pencil-square.svg">
						회차작성
					</button>
					<button>
						<img src="/images/webpack/com/main/dropdown/gear.svg">
						소설관리
					</button>
					<button>
						<img src="/images/webpack/user/textcontent/bar-chart-line.svg">
						소설통계
					</button>
					<button>
						<img src="/images/webpack/user/textcontent/plus-circle.svg">
						플러스 전환
					</button>
				</div>
			</div>
		</div>
		
	</div>
	
	
</div>