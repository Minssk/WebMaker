<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<nav>
    <div class="header-banner">
        <div class="banner-inner-area max-view">
            <div class="banner-text-area">
                <div class="dis-flex-col banner-text-area-title">
                    <p>지금 <b class="bold-text">회원 가입시</b></p>
                    <br>
                    <p>웹 <b class="bold-text">소설 · 만화</b> 등</p>
                    <p>무료이용권</p>
                    <button>회원 가입</button>
                </div>
            </div>
            <div class="banner-img-area">
                <div class="banner-wrap">
                    <section id="slider1" class="slider">
                        <div class="box">
                            <img src="<c:url value='/images/webpack/com/main/banner/1.png' />">
                        </div>
                        <div class="box">
                            <img src="<c:url value='/images/webpack/com/main/banner/2.png' />">
                        </div>
                        <div class="box">
                            <img src="<c:url value='/images/webpack/com/main/banner/3.png' />">
                        </div>
                    </section>
                </div>
                <div class="banner-button-wrap"></div>
            </div>
        </div>
        <div class="banner-search-area max-view">
            <div class="banner-search-icon">
                <img src="<c:url value='/images/webpack/com/logo/search-logo.png' />">
            </div>
            <input class="banner-search-input" type="text" placeholder="검색어를 입력해주세요.">
            <div class="banner-search-icon">
                <a href="#"><img class="header-icon" src="<c:url value='/images/webpack/com/main/search.svg' />"></a>
            </div>
        </div>
    </div>
</nav>