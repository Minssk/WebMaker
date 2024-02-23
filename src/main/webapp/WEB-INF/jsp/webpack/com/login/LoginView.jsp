<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>WEBMAKER</title>

<link rel="icon" href="<c:url value='/images/webpack/com/login/pabi.png' />">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/webpack/com/login/login.css' />">
<script type="text/javascript" src="<c:url value='/js/webpack/jquery-3.6.1.min.js'/>" ></script>


<script type="text/javaScript" language="javascript">
$("#password").keypress(function (e) {
	if(e.keyCode === 13){
		actionLogin();
	}
});
	
function actionLogin() {
	if (document.loginForm.id.value =="") {
        alert("<spring:message code="login.validate.idCheck" />");
    } else if (document.loginForm.password.value =="") {
        alert("<spring:message code="login.validate.pwCheck" />");
    } else {
        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
        document.loginForm.submit();
    }
}

function goGpkiIssu() {
    document.defaultForm.action="<c:url value='/uat/uia/egovGpkiIssu.do'/>";
    document.defaultForm.submit();
}

function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
}

function getCookie(Name) {
    var search = Name + "=";
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
        offset = document.cookie.indexOf(search);
        if (offset != -1) { // 쿠키가 존재하면
            offset += search.length;
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset);
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length;
            return unescape(document.cookie.substring(offset, end));
        }
    }
    return "";
}

function saveid(form) {
    var expdate = new Date();
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
}

function getid(form) {
	form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
}

</script>
</head>
<body>
    <div class="main_view">
        <form name="loginForm" id="loginForm" action="<c:url value='/uat/uia/actionLogin.do'/>" method="post">
            <input type="hidden" id="message" name="message" value="<c:out value='${message}'/>">
            <div class="main_right_login">
                <div class="login_input">
                    <div class="login_input_cont">
                        <h1 class="main_text">
                            <img src="<c:url value='/images/webpack/com/logo/search-logo.png' />">
                        </h1>
                        <div class="input_group">
                            <div class="input_id">
                                <input class="input_id_tag" type="text" name="id" id="id" maxlength="20"
                                    placeholder="사용자 계정">
                            </div>
                            <div class="input_pw">
                                <input class="input_pw_tag" type="password" name="password" id="password" maxlength="20"
                                    placeholder="비밀번호">
                            </div>

                            <div class="input_pw">
                                <input type="checkbox" name="checkId" class="check2"
                                    onclick="javascript:saveid(document.loginForm);" id="checkId">아이디 저장
                            </div>

                            <div class="input_button">
                                <button id="login_submit" class="login_button" type="button"
                                    onclick="actionLogin()">로그인</button>
                            </div>
                            <br>
                            <hr>
                            <div class="password_src"><a href="#">비밀번호를 잊으셨나요?</a></div>
                        </div>
                    </div>

                    <div class="login_input_cont mt-15">
                        <div class="input_group">
                            <div class="account_create_qut"><span>계정이 없으신가요? <a href="#" class="account_create"
                                        onclick="goRegiUsr(); return false;">가입하기</a></span></div>
                        </div>
                    </div>

                    <%-- <div class="no_border_cont mt-15">
                        <div class="input_group">
                            <div class="account_create_qut">
                                <p>앱을 다운로드하세요.</p>
                                <div class="store_box mt-15">
                                    <img onclick="alert('겠냐?');" class="store_icon"
                                        src="<c:url value='/images/webpack/com/login/icon_appStore.png' />">
                                    <img onclick="alert('겠냐?');" class="store_icon"
                                        src="<c:url value='/images/webpack/com/login/icon_googolePlay.png' />">
                                </div>
                            </div>
                        </div>
                    </div> --%>
                </div>
            </div>
    </div>

    <input name="userSe" type="hidden" value="GNR" />
    <input name="j_username" type="hidden" />
    </form>


    <!-- <footer class="login_footer">
	            <div class="footer_line">
	                <div class="line_content">개인정보처리방침</div>
	                <div class="line_content">약관</div>
	            </div>
	            <div class="footer_line">
	                <div class="copy_right">© 2024 WebMaker from KMS</div>
	            </div>
	        </footer> -->
    </div>
</body>
<script>
$("#password").keypress(function (e) {
	if(e.keyCode === 13){
		actionLogin();
	}
});
</script>

</html>
