<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:importAttribute name="headMenuList" />
<tiles:importAttribute name="leftMenuList" />
<tiles:importAttribute name="loginId" />


<header class="main-header">
    <div class="header-wrap max-view ">
        <div class="header-logo-wrap">
            <a href="/"><img class="header-logo-img" src="<c:url value='/images/webpack/com/logo/webutility_logo.png'/>"></a>
        </div>
        <div class="header-menu-wrap">
            <ul class="">
            	<c:forEach var="menuList" items="${headMenuList}">
					<li>
						<a class="link-black" href="<c:url value='${menuList.chkURL }' />">
							<c:out value="${menuList.menuNm}"/>
						</a>
					</li>
				</c:forEach>
            </ul>
        </div>
        <div class="header-button-wrap">
            <a href="#"><img class="header-icon" src="<c:url value='/images/webpack/com/main/bell.svg'/>"></a>
            <a href="#"><img class="header-icon" src="<c:url value='/images/webpack/com/main/pencil-square.svg'/>"></a>
            <a href="#"><img class="header-icon" src="<c:url value='/images/webpack/com/main/search.svg'/>"></a>
			
			<div class="dropdown-person-icon-box">
				<img id="dropdown-person" class="header-icon-person" src="<c:url value='/images/webpack/com/main/dropdown/person-sample.png'/>">
			</div>
            <div class="header-dropdown-box">
            	<div class="header-dropdown-username">
            		<c:out value="${loginId}"/>님 환영합니다.
            	</div>
            	<div class="header-dropdown-line"></div>
            	<div class="header-dropdown-menu">
            		<img class="header-dropdown-menu-icon" src="<c:url value='/images/webpack/com/main/dropdown/pencil-square.svg'/>">
            		<a href="#">신규 작품 등록</a>
            	</div>
	            <div class="header-dropdown-menu">
	            	<img class="header-dropdown-menu-icon" src="<c:url value='/images/webpack/com/main/dropdown/folder.svg'/>">
	            	<a href="#">내 작품 관리</a>
	            </div>
	            <div class="header-dropdown-line"></div>
	            <div class="header-dropdown-menu">
	            	<img class="header-dropdown-menu-icon" src="<c:url value='/images/webpack/com/main/dropdown/megaphone.svg'/>">
	            	<a href="#">리뷰/홍보</a>
	            </div>
	            <div class="header-dropdown-menu">
	            	<img class="header-dropdown-menu-icon" src="<c:url value='/images/webpack/com/main/dropdown/keyboard.svg'/>">
	            	<a href="#">자유 게시판</a>
	            </div>
	            <div class="header-dropdown-line"></div>
	            <div class="header-dropdown-menu">
	            	<img class="header-dropdown-menu-icon" src="<c:url value='/images/webpack/com/main/dropdown/gear.svg'/>">
	            	<a href="#">사용자 설정</a>
	            </div>
	            <div class="header-dropdown-menu">
	            	<img class="header-dropdown-menu-icon" src="<c:url value='/images/webpack/com/main/dropdown/clipboard2-check.svg'/>">
	            	<a href="#">공지사항/고객센터</a>
	            </div>
	            <div class="header-dropdown-line"></div>
	            <div class="header-dropdown-menu">
	            	<img class="header-dropdown-menu-icon" src="<c:url value='/images/webpack/com/main/dropdown/box-arrow-right.svg'/>">
	            	<a href="<c:url value='/uat/uia/actionLogout.do'/>">로그아웃</a>
	            </div>
	        </div>
        </div>
    </div>
    <script>
	    var dropdown = document.querySelector("#dropdown-person");
	    var dropdownContent = document.querySelector(".header-dropdown-box");
	    dropdown.addEventListener("click", function() {
	      if (dropdownContent.style.display === "block") {
	          dropdownContent.style.display = "none";
	      } else {
	          dropdownContent.style.display = "block";
	      }
	    });
    </script>
</header>


<!-- Move TOP -->
<div class="move-top"><img src="<c:url value='/images/webpack/com/main/arrow-up.svg'/>"></div>
<script>
$(".move-top").on("click",function(){
	$('html, body').animate({
		scrollTop : 0
	},400)
	return false;
});
</script>
<!-- Move TOP -->

<!-- Modal Call -->
<script>
    function openModal(code) {
    	var modal = document.querySelector('.modal');
    	while (modal.firstChild) {
    	    modal.removeChild(modal.firstChild);
    	}
    	$.ajax({
			url: '/com/util/GetUserModal.do',
			data: {"modal_code" : code},
			type: 'post',
			success: function(result){
				modal.innerHTML = result;
				modal.style.display = "flex";
			},
			error: function(){
				console.log('error modal');	
			}
		});
    }
    
    function closeModal() {
    	var modal = document.querySelector('.modal');
    	while (modal.firstChild) {
    	    modal.removeChild(modal.firstChild);
    	}
    	modal.style.display = "none";
    }
</script>
<!-- Modal Call -->

