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

<nav class="navbar navbar-expand-lg navbar-light bg-white w-100">
        <div class="container-fluid d-flex flex-row align-items-end inner">
        	
        	<!-- Title -->
            <a class="navbar-brand d-flex flex-row align-items-center " href="/">
                <span class="header_text">M.FACTORY</span>
            </a>
            
            <!-- Upper Menu -->
            <div class="navbar-collapse header_menu_box" id="navbarText">
                <ul class="navbar-nav mb-2 mb-lg-0 navbar-fixed-topd w-100 d-flex flex-row me-3 me-4 view_head_line">
                	<c:forEach var="menuList" items="${headMenuList}">
                		 <a class="nav-link active" aria-current="page" href="<c:url value='${menuList.chkURL }' />"><c:out value="${menuList.menuNm}"/></a>
			      		<%-- <c:forEach var="subMenuList" items="${leftMenuList}">
			      			<c:if test="${menuList.menuNo eq subMenuList.upperMenuNo}">
						        <li class="nav-item link_tab">
				                     <a class="nav-link active" aria-current="page" href="<c:url value='${subMenuList.chkURL }' />">${menuList.menuNm}</a>
				                 </li>
			        		</c:if>
			        	</c:forEach> --%>
			        </c:forEach>
                </ul>
                
                <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle fs-12" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            	<c:out value="${loginId}"></c:out>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a href="#" class="dropdown-item header_ibox"
                                        onclick="goToApprovalMgt('')" title="결재함 보기">
                                        <img src="<c:url value='/images/webpack/com/icon/icon_appoval.svg'/>" class="header_img mx-2 me-3">
                                        <p>
                                            결재함
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="dropdown-item header_ibox"
                                        onclick="open_modal('pledge')" title="서약서 관리 보기">
                                        <img src="<c:url value='/images/webpack/com/icon/icon_mgt.svg'/>" class="header_img mx-2 me-3">
                                        <p>
                                            서약서 관리
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="dropdown-item header_ibox"
                                        onclick="open_modal('mail');" title="협업 메일 보기">
                                        <img src="<c:url value='/images/webpack/com/icon/icon_mail.svg'/>" class="header_img mx-2 me-3">
                                        <p>
                                            협업 메일
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="dropdown-item header_ibox" onclick="open_modal('ach')"
                                        title="활동 이력 보기">
                                        <img src="<c:url value='/images/webpack/com/header/icon_log.svg'/>" class="header_img mx-2 me-3">
                                        <p>
                                            활동 이력
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li>
                                    <a href="#" class="dropdown-item header_ibox" 
                                    	onclick="location.href='<c:url value='/uat/uia/actionLogout.do'/>'"  title="계정 로그아웃">
                                        <img src="<c:url value='/images/webpack/com/header/icon_logout.svg'/>" class="header_img mx-2 me-3">
                                        <p>
                                            로그아웃
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>
