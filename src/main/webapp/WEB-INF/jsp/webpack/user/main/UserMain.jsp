<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<script type="text/javascript" src="<c:url value='/js/webpack/user/main/main-banner.js'/>" ></script>

<tiles:importAttribute name="loginId" />


<main class="dis-flex-col flex-acenter w-100">
    <div class="main-board-area max-view">
        <div class="main-wrap-title">
            <span>웹메이커 인기 작품</span>
            <b>인기 작품들을 지금 바로!</b>
        </div>
        <div class="main-board-tab-area">
            <div class="main-board-tab">
                <button class="main-board-tab-btn tab-active">전체</button>
                <button class="main-board-tab-btn">판타지</button>
                <button class="main-board-tab-btn">무협</button>
                <button class="main-board-tab-btn">현대</button>
                <button class="main-board-tab-btn">로맨스</button>
                <button class="main-board-tab-btn">공포</button>
            </div>
            <div>
                <a><img class="main-board-tan-plus" src="<c:url value='/images/webpack/com/main/plus-circle.svg'/>"></a>
            </div>
        </div>

        <!--list start-->
        <div class="main-board-wrap">
            <div class="main-board-list mt-35">
                <div>
                    <div class="main-board-book-thm">
                        <img src="/images/webpack/com/main/board/1.png">
                    </div>
                    <div class="main-board-book-info">
                        <div class="dis-flex-row flex-acenter">
                            <div>
                                <span class="main-board-book-number">1.</span>
                            </div>
                            <div>
                                <b class="main-board-book-title">누가은비 머리위에 똥을 싸고 튀었나!</b>
                            </div>
                        </div>
                        <span class="main-board-book-story">똥싼 용의자 추적기</span>
                        <div class="main-board-book-tagline">
                            <span>무협</span>
                            <span>액션</span>
                            <span>스릴러</span>
                            <span>추리</span>
                            <span>연애</span>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="main-board-book-thm">
                        <img src="/images/webpack/com/main/board/3.png">
                    </div>
                    <div class="main-board-book-info">
                        <div class="dis-flex-row flex-acenter">
                            <div>
                                <span class="main-board-book-number">2.</span>
                            </div>
                            <div>
                                <b class="main-board-book-title">영문법 5시간의 법칙</b>
                            </div>
                        </div>
                        <span class="main-board-book-story">1타 강사 김민수의 공부법</span>
                        <div class="main-board-book-tagline">
                            <span>공부</span>
                            <span>영어</span>
                            <span>토익</span>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="main-board-book-thm">
                        <img src="/images/webpack/com/main/board/4.png">
                    </div>
                    <div class="main-board-book-info">
                        <div class="dis-flex-row flex-acenter">
                            <div>
                                <span class="main-board-book-number">3.</span>
                            </div>
                            <div>
                                <b class="main-board-book-title">소소하지만 즐겁게 살고 있습니다.</b>
                            </div>
                        </div>
                        <span class="main-board-book-story">땡이의 행복한 일상</span>
                        <div class="main-board-book-tagline">
                            <span>일상</span>
                            <span>애견</span>
                            <span>반려동물</span>
                            <span>산책</span>
                            <span>행복</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-board-list mt-35">
                <div>
                    <div class="main-board-book-thm">
                        <img src="/images/webpack/com/main/board/2.png">
                    </div>
                    <div class="main-board-book-info">
                        <div class="dis-flex-row flex-acenter">
                            <div>
                                <span class="main-board-book-number">4.</span>
                            </div>
                            <div>
                                <b class="main-board-book-title">안전하게 즐기는 해수욕장</b>
                            </div>
                        </div>
                        <span class="main-board-book-story">해수욕장 탐방기</span>
                        <div class="main-board-book-tagline">
                            <span>설명서</span>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="main-board-book-thm">
                        <img src="/images/webpack/com/main/board/5.png">
                    </div>
                    <div class="main-board-book-info">
                        <div class="dis-flex-row flex-acenter">
                            <div>
                                <span class="main-board-book-number">5.</span>
                            </div>
                            <div>
                                <b class="main-board-book-title">베스트 메뉴</b>
                            </div>
                        </div>
                        <span class="main-board-book-story">20대 성공한 사업가 김민수의
                            <br>
                            세상에서 제일 빠른 부자되는법.
                        </span>
                        <div class="main-board-book-tagline">
                            <span>자서전</span>
                            <span>사업</span>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="main-board-book-thm">
                        <img src="/images/webpack/com/main/board/6.png">
                    </div>
                    <div class="main-board-book-info">
                        <div class="dis-flex-row flex-acenter">
                            <div>
                                <span class="main-board-book-number">6.</span>
                            </div>
                            <div>
                                <b class="main-board-book-title">살인마-누가 그사람을 죽였나</b>
                            </div>
                        </div>
                        <span class="main-board-book-story">
                                최악의 연쇄숟가락 살인마 김민수
                                <br> 
                                조금이라도 늦으면 영원히 잡을 수 없다.
                        </span>
                        <div class="main-board-book-tagline">
                            <span>공포</span>
                            <span>추리</span>
                            <span>반전</span>
                            <span>스릴러</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main-board-area max-view">
        <div class="main-wrap-title">
            <span>완결까지 몰아보기</span>
            <b>하루종일 달려볼까?</b>
        </div>

        <div class="main-board-list">
            <div class="main-board-book-thm-full">
                <img src="/images/webpack/com/main/board/1.png">
                <span>누가은비 머리 위에 똥...</span>
            </div>
            <div class="main-board-book-thm-full">
                <img src="/images/webpack/com/main/board/2.png">
                <span>안전하게 즐기는 해수욕...</span>
            </div>
            <div class="main-board-book-thm-full">
                <img src="/images/webpack/com/main/board/3.png">
                <span>영문법 5시간의 법칙</span>
            </div>
            <div class="main-board-book-thm-full">
                <img src="/images/webpack/com/main/board/4.png">
                <span>소소하지만 즐겁게 살고...</span>
            </div>
            <div class="main-board-book-thm-full">
                <img src="/images/webpack/com/main/board/5.png">
                <span>베스트 메뉴</span>
            </div>
            <div class="main-board-book-thm-full">
                <img src="/images/webpack/com/main/board/6.png">
                <span>살인마</span>
            </div>
        </div>
    </div>
</main>