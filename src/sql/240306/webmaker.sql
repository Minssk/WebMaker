# Host: 127.0.0.1:3316  (Version 5.5.5-10.8.3-MariaDB)
# Date: 2024-03-05 17:49:02
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "ids"
#

DROP TABLE IF EXISTS `ids`;
CREATE TABLE `ids` (
  `IDGEN_TABLE_NM` varchar(20) NOT NULL,
  `IDGEN_NEXT_ID` decimal(30,0) NOT NULL,
  PRIMARY KEY (`IDGEN_TABLE_NM`),
  UNIQUE KEY `IDS_PK` (`IDGEN_TABLE_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "ids"
#


#
# Structure for table "tb_board_notice"
#

DROP TABLE IF EXISTS `tb_board_notice`;
CREATE TABLE `tb_board_notice` (
  `NOTICE_ID` varchar(20) NOT NULL DEFAULT '',
  `NOTICE_TITLE` varchar(6000) DEFAULT NULL COMMENT '제목',
  `NOTICE_CN` mediumtext DEFAULT NULL COMMENT '내용',
  `POST_VIEWS` decimal(10,0) DEFAULT NULL COMMENT '조회수',
  `ATCH_FILE_ID` char(20) DEFAULT NULL COMMENT '첨부파일이름',
  `FIX_YN` char(1) DEFAULT NULL COMMENT '고정여부',
  `REGIST_ID` varchar(20) DEFAULT NULL COMMENT '최초작성자',
  `REGIST_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '작성일',
  `UPDATE_ID` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '수정자 ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`NOTICE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

#
# Data for table "tb_board_notice"
#

INSERT INTO `tb_board_notice` VALUES ('NOTI_000000000000252','웹 메이커에 오신 것을 환영합니다.','<p>환영합니다.</p>',1,NULL,'N','user01','2024-02-22 16:30:16',NULL,NULL),('NOTI_000000000000253','IU \'Shopper\' MV','<figure class=\"media\"><div data-oembed-url=\"https://www.youtube.com/watch?v=kHW-UVXOcLU\"><div style=\"position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;\"><iframe src=\"https://www.youtube.com/embed/kHW-UVXOcLU\" style=\"position: absolute; width: 100%; height: 100%; top: 0; left: 0;\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe></div></div></figure><p>&nbsp;</p>',16,NULL,'N','user01','2024-02-22 16:33:29','user01','2024-02-25 12:14:33'),('NOTI_000000000000281','[안내] 표준프레임워크 v4.2 베타 버전 안내','<p>전정부 프레임워크 4.2 버전 이 출시되어 안내드립니다.</p><p>아래 본문을 확인해 주십시오.</p><p>&nbsp;</p><hr><p><span style=\"color:rgb(0,0,0);\">안녕하십니까?</span><br><span style=\"color:rgb(0,0,0);\">표준프레임워크 센터입니다.</span><br><br><span style=\"color:rgb(0,0,0);\">전자정부 표준프레임워크 4.2 베타 버전을 배포합니다.</span><br><br><span style=\"color:rgb(0,0,0);\">1) 실행환경 v4.2(베타)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 실행환경 적용 오픈소스SW 업그레이드 (Spring Framework 5.3.20 -&gt; 5.3.27)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 실행환경 적용 오픈소스SW 업그레이드 (Spring Security 5.7.1 -&gt; 5.8.3)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 실행환경 적용 오픈소스SW 업그레이드 (Spring Batch 4.3.6 -&gt; 4.3.8)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - SpringBoot 2.7.12 지원</span><br><br><span style=\"color:rgb(0,0,0);\">2) 개발환경 v4.2(베타)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - Eclipse 2022-12 (4.26.0) 적용</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 실행환경 4.2.0 적용</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 공통컴포넌트 251종 (공통컴포넌트 연계모듈 8종 업그레이드, 미사용 2종 삭제)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 44명의 개발자 컨트리뷰션과 보안강화패치(국정원, 국가보안기술연구소-NSR)가 적용된 공통컴포넌트 및 템플릿 3종 탑재</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 시큐어코딩을 위한 PMD Ruleset 추가</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - UML/ERD Editor를 AmaterasModeler로 변경</span><br><br><span style=\"color:rgb(0,0,0);\">3) 공통컴포넌트 v4.2(베타)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 실행환경 4.2.0 업그레이드 반영</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 공통컴포넌트 연계모듈 6종 업그레이드 (Twitter연동, Facebook 연동, 기관코드수신, 소셜 인증 기반 로그인 기능, 환율계산, LDAP조직도관리)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 미사용 2종 삭제 (실명확인, 공공i-Pin 실명확인)</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 44명의 개발자 컨트리뷰션 반영</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 외부전문업체 보안취약점 코드 점검 및 보안 패치</span><br><span style=\"color:rgb(0,0,0);\">&nbsp; &nbsp; - 국정원, NSR(국가보안기술연구소)의 보안 점검 결과 반영을 통한 시큐어 코딩</span></p><hr><p>Link : <a href=\"https://www.egovframe.go.kr/home/ntt/nttRead.do?pagerOffset=0&amp;searchKey=&amp;searchValue=&amp;menuNo=74&amp;bbsId=6&amp;nttId=1886\">https://www.egovframe.go.kr/home/ntt/nttRead.do?pagerOffset=0&amp;searchKey=&amp;searchValue=&amp;menuNo=74&amp;bbsId=6&amp;nttId=1886</a></p>',13,NULL,'Y','user01','2024-02-25 12:16:01',NULL,NULL),('NOTI_000000000000282','2023년도 개발환경 v4.1 보안 패치 안내','<p>전자정부프레임워크 23년 4.1 보안패치 안내드립니다.</p><p>아래 본문 확인 후 해당사항 조치 부탁드립니다.</p><hr><p><span style=\"color:rgb(0,0,0);\">안녕하십니까?</span><br><span style=\"color:rgb(0,0,0);\">표준프레임워크 센터입니다.</span><br><span style=\"color:rgb(0,0,0);\">표준프레임워크 개발환경 v4.1 일부 모듈에 보안성 강화를 위하여 패치 소스 배포합니다.</span><br><br><span style=\"color:rgb(0,0,0);\">패치 대상 : 개발환경 v4.1 중 일부 템플릿 프로젝트(공통컴포넌트, 포털 사이트 예제, 엔터프라이즈 비즈니스 예제) 샘플 생성 기능 사용 시</span><br><span style=\"color:rgb(0,0,0);\">패치 방법 : 다음 방법 중 하나 선택하여 진행</span><br><span style=\"color:rgb(0,0,0);\">1. eGovFrame 메뉴 &gt; Configuration &gt; Customize Development Tool</span><br><span style=\"color:rgb(0,0,0);\">2. eGovFrame 메뉴 &gt; Configuration &gt; Add Plug-in</span><br><span style=\"color:rgb(0,0,0);\">3. Help &gt; Install New Software... 선택 후</span><br><span style=\"color:rgb(0,0,0);\">https://maven.egovframe.go.kr/update_4.1/ 입력</span><br><br><span style=\"color:rgb(0,0,0);\">올해 배포한&nbsp;표준프레임워크 4.1 버전의 일부 템플릿 프로젝트에 보안강화 조치를 진행한 것으로</span><br><span style=\"color:rgb(0,0,0);\">표준프레임워크 4.1 버전을 사용하는 경우 반드시 절차대로 패치를 적용하시기 바랍니다.</span><br><br><span style=\"color:rgb(0,0,0);\">※ 전자정부 표준프레임워크 센터 문의 이메일 : egovframesupport@gmail.com 문의 전화 : 1566-3598</span><br><br><span style=\"color:rgb(0,0,0);\">※ 전자정부 표준프레임워크 라이선스 </span><a href=\"https://www.egovframe.go.kr/home/sub.do?menuNo=23\">(상세 페이지 이동)</a><br><span style=\"color:rgb(0,0,0);\">전자정부 표준프레임워크 활용의 안정성 보장을 위해 위험성을 지속적으로 모니터링하고 있으나, 오픈소스의 특성상 문제가 발생할 수 있습니다.</span><br><span style=\"color:rgb(0,0,0);\">전자정부 표준프레임워크는 Apache 2.0 라이선스를 따르고 있는 오픈소스 프로그램입니다.</span><br><span style=\"color:rgb(0,0,0);\">Apache 2.0 라이선스에 따라 표준프레임워크를 활용하여 발생된 업무중단, 컴퓨터 고장 또는 오동작으로 인한 손해 등에 대해서 책임이 없습니다.</span><br><span style=\"color:rgb(0,0,0);\">단, 표준프레임워크 내에서 사용된 외부 오픈소스의 경우 원 오픈소스의 라이선스 정책을 유지합니다.</span></p><hr><p>&nbsp;</p><p>Link : <a href=\"https://www.egovframe.go.kr/home/ntt/nttRead.do?pagerOffset=0&amp;searchKey=&amp;searchValue=&amp;menuNo=74&amp;bbsId=6&amp;nttId=1881\">https://www.egovframe.go.kr/home/ntt/nttRead.do?pagerOffset=0&amp;searchKey=&amp;searchValue=&amp;menuNo=74&amp;bbsId=6&amp;nttId=1881</a></p>',3,NULL,'N','user01','2024-02-25 12:18:48',NULL,NULL);

#
# Structure for table "tb_com_address_mgt"
#

DROP TABLE IF EXISTS `tb_com_address_mgt`;
CREATE TABLE `tb_com_address_mgt` (
  `ADBK_ID` char(20) NOT NULL,
  `ADBK_NM` varchar(50) NOT NULL,
  `OTHBC_SCOPE` varchar(20) NOT NULL,
  `USE_AT` char(1) NOT NULL,
  `WRTER_ID` varchar(20) DEFAULT NULL,
  `TRGET_ORGNZT_ID` char(20) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime NOT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) NOT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ADBK_ID`),
  UNIQUE KEY `COMTNADBKMANAGE_PK` (`ADBK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_address_mgt"
#


#
# Structure for table "tb_com_address"
#

DROP TABLE IF EXISTS `tb_com_address`;
CREATE TABLE `tb_com_address` (
  `EMPLYR_ID` varchar(20) DEFAULT NULL,
  `NCRD_ID` char(20) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  `ADBK_CONSTNT_ID` char(20) NOT NULL,
  `NM` varchar(50) DEFAULT NULL,
  `EMAIL_ADRES` varchar(50) DEFAULT NULL,
  `MBTLNUM` varchar(20) DEFAULT NULL,
  `FXNUM` varchar(20) DEFAULT NULL,
  `OFFM_TELNO` varchar(20) DEFAULT NULL,
  `HOUSE_TELNO` varchar(20) DEFAULT NULL,
  `ADBK_ID` char(20) NOT NULL,
  PRIMARY KEY (`ADBK_CONSTNT_ID`,`ADBK_ID`),
  UNIQUE KEY `COMTNADBK_PK` (`ADBK_CONSTNT_ID`,`ADBK_ID`),
  KEY `COMTNADBK_i01` (`ADBK_ID`),
  CONSTRAINT `COMTNADBK_FK2` FOREIGN KEY (`ADBK_ID`) REFERENCES `tb_com_address_mgt` (`ADBK_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_address"
#


#
# Structure for table "tb_com_authgroup"
#

DROP TABLE IF EXISTS `tb_com_authgroup`;
CREATE TABLE `tb_com_authgroup` (
  `GROUP_ID` char(20) NOT NULL,
  `GROUP_NM` varchar(60) NOT NULL,
  `GROUP_CREAT_DE` char(20) NOT NULL,
  `GROUP_DC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`),
  UNIQUE KEY `COMTNAUTHORGROUPINFO_PK` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_authgroup"
#

INSERT INTO `tb_com_authgroup` VALUES ('GROUP_00000000000000','0번  그룹입니다','2022-07-30 10:41:51','0번  그룹입니다');

#
# Structure for table "tb_account_mber_mgt"
#

DROP TABLE IF EXISTS `tb_account_mber_mgt`;
CREATE TABLE `tb_account_mber_mgt` (
  `MBER_ID` varchar(20) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `PASSWORD_HINT` varchar(100) DEFAULT NULL,
  `PASSWORD_CNSR` varchar(100) DEFAULT NULL,
  `IHIDNUM` varchar(200) DEFAULT NULL,
  `MBER_NM` varchar(50) NOT NULL,
  `ZIP` varchar(6) NOT NULL,
  `ADRES` varchar(100) NOT NULL,
  `AREA_NO` varchar(4) NOT NULL,
  `MBER_STTUS` varchar(15) DEFAULT NULL,
  `DETAIL_ADRES` varchar(100) DEFAULT NULL,
  `END_TELNO` varchar(4) NOT NULL,
  `MBTLNUM` varchar(20) NOT NULL,
  `GROUP_ID` char(20) DEFAULT NULL,
  `MBER_FXNUM` varchar(20) DEFAULT NULL,
  `MBER_EMAIL_ADRES` varchar(50) DEFAULT NULL,
  `MIDDLE_TELNO` varchar(4) NOT NULL,
  `SBSCRB_DE` datetime DEFAULT NULL,
  `SEXDSTN_CODE` char(1) DEFAULT NULL,
  `ESNTL_ID` char(20) NOT NULL,
  `LOCK_AT` char(1) DEFAULT NULL,
  `LOCK_CNT` decimal(3,0) DEFAULT NULL,
  `LOCK_LAST_PNTTM` datetime DEFAULT NULL,
  `CHG_PWD_LAST_PNTTM` datetime DEFAULT NULL,
  PRIMARY KEY (`MBER_ID`),
  UNIQUE KEY `COMTNGNRLMBER_PK` (`MBER_ID`),
  KEY `COMTNGNRLMBER_i01` (`GROUP_ID`),
  CONSTRAINT `COMTNGNRLMBER_FK1` FOREIGN KEY (`GROUP_ID`) REFERENCES `tb_com_authgroup` (`GROUP_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_account_mber_mgt"
#

INSERT INTO `tb_account_mber_mgt` VALUES ('USER','6TAJYwhKCgkgzPXDb83ZUiHi2/TKHhD7t5Ba6RN2qoo=','P01','전자정부표준프레임워크센터',NULL,'일반회원','100775','서울 중구 무교동 한국정보화진흥원','02','P','전자정부표준프레임워크센터','2059','1566-2059','GROUP_00000000000000','1566-2059','egovframesupport@gmail.com','1566','2022-07-30 10:41:51','F','USRCNFRM_00000000001',NULL,4,'2024-02-22 11:24:12',NULL),('user01','I1zw2Bn6RSs0sC7snvka7lVynD9N6A9iZTXVMezM9b8=','P01','1',NULL,'김민수','du','dudu','000','P','du','0000','0000000000','GROUP_00000000000000','','du@du.com','0000','2022-07-30 10:52:39','M','USRCNFRM_00000000003',NULL,NULL,NULL,'2022-07-30 10:52:39');

#
# Structure for table "tb_account_enterprise_mgt"
#

DROP TABLE IF EXISTS `tb_account_enterprise_mgt`;
CREATE TABLE `tb_account_enterprise_mgt` (
  `ENTRPRS_MBER_ID` varchar(20) NOT NULL,
  `ENTRPRS_SE_CODE` char(8) DEFAULT NULL,
  `BIZRNO` varchar(10) DEFAULT NULL,
  `JURIRNO` varchar(13) DEFAULT NULL,
  `CMPNY_NM` varchar(60) NOT NULL,
  `CXFC` varchar(50) DEFAULT NULL,
  `ZIP` varchar(6) NOT NULL,
  `ADRES` varchar(100) NOT NULL,
  `ENTRPRS_MIDDLE_TELNO` varchar(4) NOT NULL,
  `FXNUM` varchar(20) DEFAULT NULL,
  `INDUTY_CODE` char(1) DEFAULT NULL,
  `APPLCNT_NM` varchar(50) NOT NULL,
  `APPLCNT_IHIDNUM` varchar(200) DEFAULT NULL,
  `SBSCRB_DE` datetime DEFAULT NULL,
  `ENTRPRS_MBER_STTUS` varchar(15) DEFAULT NULL,
  `ENTRPRS_MBER_PASSWORD` varchar(200) DEFAULT NULL,
  `ENTRPRS_MBER_PASSWORD_HINT` varchar(100) NOT NULL,
  `ENTRPRS_MBER_PASSWORD_CNSR` varchar(100) NOT NULL,
  `GROUP_ID` char(20) DEFAULT NULL,
  `DETAIL_ADRES` varchar(100) DEFAULT NULL,
  `ENTRPRS_END_TELNO` varchar(4) NOT NULL,
  `AREA_NO` varchar(4) NOT NULL,
  `APPLCNT_EMAIL_ADRES` varchar(50) NOT NULL,
  `ESNTL_ID` char(20) NOT NULL,
  `LOCK_AT` char(1) DEFAULT NULL,
  `LOCK_CNT` decimal(3,0) DEFAULT NULL,
  `LOCK_LAST_PNTTM` datetime DEFAULT NULL,
  `CHG_PWD_LAST_PNTTM` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTRPRS_MBER_ID`),
  UNIQUE KEY `COMTNENTRPRSMBER_PK` (`ENTRPRS_MBER_ID`),
  KEY `COMTNENTRPRSMBER_i01` (`GROUP_ID`),
  CONSTRAINT `COMTNENTRPRSMBER_FK1` FOREIGN KEY (`GROUP_ID`) REFERENCES `tb_com_authgroup` (`GROUP_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_account_enterprise_mgt"
#

INSERT INTO `tb_account_enterprise_mgt` VALUES ('ENTERPRISE','C0000001','1008360001','1000310000011','NIA','이가브','100775','서울특별시 중구 청계천로 14 - 0 한국정보사회진흥원','1566','1566-2059','O','관리자',NULL,'2022-07-30 10:41:51','P','ZQhr3oB5QWjBnBO0kbFF7bvQDLkk+Em0ExjTq5JtVTo=','P01','전자정부표준프레임워크센터','GROUP_00000000000000','표준프레임워크센터','2059','02','egovframesupport@gmail.com','USRCNFRM_00000000002',NULL,NULL,NULL,NULL);

#
# Structure for table "tb_com_authinfo"
#

DROP TABLE IF EXISTS `tb_com_authinfo`;
CREATE TABLE `tb_com_authinfo` (
  `AUTHOR_CODE` varchar(30) NOT NULL,
  `AUTHOR_NM` varchar(60) NOT NULL,
  `AUTHOR_DC` varchar(200) DEFAULT NULL,
  `AUTHOR_CREAT_DE` char(20) NOT NULL,
  PRIMARY KEY (`AUTHOR_CODE`),
  UNIQUE KEY `COMTNAUTHORINFO_PK` (`AUTHOR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_authinfo"
#

INSERT INTO `tb_com_authinfo` VALUES ('IS_AUTHENTICATED_ANONYMOUSLY','스프링시큐리티 내부사용(롤부여 금지)','','2022-07-30 10:41:51'),('IS_AUTHENTICATED_FULLY','스프링시큐리티 내부사용(롤부여 금지)','','2022-07-30 10:41:51'),('IS_AUTHENTICATED_REMEMBERED','스프링시큐리티 내부사용(롤부여 금지)','','2022-07-30 10:41:51'),('ROLE_ADMIN','관리자','','2022-07-30 10:41:51'),('ROLE_ANONYMOUS','익명 사용자','','2022-07-30 10:41:51'),('ROLE_USER','일반 사용자','','2022-07-30 10:41:51');

#
# Structure for table "tb_com_clcode"
#

DROP TABLE IF EXISTS `tb_com_clcode`;
CREATE TABLE `tb_com_clcode` (
  `CL_CODE` char(3) NOT NULL,
  `CL_CODE_NM` varchar(60) DEFAULT NULL,
  `CL_CODE_DC` varchar(200) DEFAULT NULL,
  `USE_AT` char(1) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CL_CODE`),
  UNIQUE KEY `COMTCCMMNCLCODE_PK` (`CL_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_clcode"
#

INSERT INTO `tb_com_clcode` VALUES ('EFC','전자정부 프레임워크 공통서비스','전자정부 프레임워크 공통서비스','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM');

#
# Structure for table "tb_com_code"
#

DROP TABLE IF EXISTS `tb_com_code`;
CREATE TABLE `tb_com_code` (
  `CODE_ID` varchar(6) NOT NULL,
  `CODE_ID_NM` varchar(60) DEFAULT NULL,
  `CODE_ID_DC` varchar(200) DEFAULT NULL,
  `USE_AT` char(1) DEFAULT NULL,
  `CL_CODE` char(3) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`),
  UNIQUE KEY `COMTCCMMNCODE_PK` (`CODE_ID`),
  KEY `COMTCCMMNCODE_i01` (`CL_CODE`),
  CONSTRAINT `COMTCCMMNCODE_FK1` FOREIGN KEY (`CL_CODE`) REFERENCES `tb_com_clcode` (`CL_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_code"
#

INSERT INTO `tb_com_code` VALUES ('COM001','등록구분','게시판, 커뮤니티, 동호회 등록구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM002','이력구분','시스템이력등록구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM003','업무구분','업무구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM005','템플릿유형','템플릿유형구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','승인유형','동호회, 커뮤니티 승인 유형','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM007','승인상태','동호회, 커뮤니티 승인 상태','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM008','처리상태','송수신 요청의 처리상태','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM009','게시판속성','게시판 속성','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM010','권한유형','시스템을 사용하기 위한 권한 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','롤유형','시스템의 기능을 사용하기 위한 롤 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM012','회원유형','일반/기업/업무담당자를 구현하기 위한 사용자 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM013','회원상태','회원 가입 신청/승인/삭제를 위한 상태 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM014','성별구분','남녀 성별 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM015','인증방식유형','주민등록번호 인증, Gpin 인증과 같은 사용자 인증 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM016','변경요청처리 상태','프로그램 변경의 요청/처리 등의 변경요청 상태 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM017','휴일구분','휴일의 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM018','질문유형','질문유형 객관식/주관식 상태구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM019','일정중요도','일정중요도 낮음/보통/높음 상태구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM020','일정구분','일정구분 부서일지정보/일지정보 상태구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM021','도움말구분','도움말 설명 구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','비밀번호 힌트','비밀번호 힌트 구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM023','사이트주제분류','사이트주제분류 설명 구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM024','발송결과구분','발송메일 수신결과 구분 코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM025','소속기관','소속기관정보를 관리할때 사용하는 구분코드(시스템별로 재정의)','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM026','기업구분','기업구분정보를 관리할때 사용하는 구분코드(시스템별로 재정의)','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','업종','대표업종코드(시스템별로 재정의)','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM028','질의응답처리상태','Q/A 처리상태코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM029','롤유형코드','','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM030','일정구분','일정구분 코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM031','반복구분','일정 반복구분 코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','작업유형','승인이력 작업유형','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM033','시스템로그구분','','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM034','직업유형','직업유형코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM035','행사유형','행사/이벤트/캠페인 구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM036','보고서 진행상태코드','보고서의 진행상태를 코드화 하여 관리한다.','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM038','온라인POLL페기유무','온라인POLL-온라인POLL페기유무','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','온라인POLL구분','온라인POLL-온온라인POLL구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM040','보고서 종류코드','보고서 종류코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM041','온라인메뉴얼구분','온라인메누얼-온라인메뉴얼구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM042','보고서통계기간구분','보고서통계기간구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM043','기관코드변경구분','기관코드변경구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM044','기관코드수신처리구분','기관코드수신처리구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM045','사용여부','사용여부','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM046','모니터링상태구분','모니터링상태구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM047','실행주기구분','실행주기구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM048','DBMS종류','DBMS종류','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM049','압축구분','압축구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM050','수신구분','쪽지관리','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM051','승인여부','승인여부구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM052','달력구분','달력구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM053','행사구분','행사구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM054','경조구분','경조구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM055','포상구분','포상구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM056','휴가구분','휴가구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM057','일정구분','일정구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM058','반복구분코드','반복구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM059','우선순위','우선순위','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM060','보고서구분','보고서구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM061','간부상태','간부상태','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062',' HTTP상태코드','HTTP상태코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM063','상태관리','상태관리','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM064','서버종류코드','서버종류코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','장애종류코드','장애종류코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM066','서버자원종류','서버자원종류','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM067','네트워크관리항목','네트워크관리항목','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM068','처리상태코드','처리상태코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','기념일구분','기념일구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','위치구분','회의실 위치구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','당직체크구분','당직체크구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM072','서비스상태','서비스상태','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','가족관계','가족관계','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','요일구분','요일구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM075','업무구분코드','업무구분코드','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM076','실행상태구분','실행상태구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM101','게시판유형','게시판유형','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM102','단어구분','단어구분','Y','EFC','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM');

#
# Structure for table "tb_com_code_detail"
#

DROP TABLE IF EXISTS `tb_com_code_detail`;
CREATE TABLE `tb_com_code_detail` (
  `CODE_ID` varchar(6) NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `CODE_NM` varchar(60) DEFAULT NULL,
  `CODE_DC` varchar(200) DEFAULT NULL,
  `USE_AT` char(1) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`,`CODE`),
  UNIQUE KEY `COMTCCMMNDETAILCODE_PK` (`CODE_ID`,`CODE`),
  KEY `COMTCCMMNDETAILCODE_i01` (`CODE_ID`),
  CONSTRAINT `COMTCCMMNDETAILCODE_FK1` FOREIGN KEY (`CODE_ID`) REFERENCES `tb_com_code` (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_code_detail"
#

INSERT INTO `tb_com_code_detail` VALUES ('COM001','REGC01','단일 게시판 이용등록','단일 게시판 이용등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM001','REGC02','커뮤니티 등록','커뮤니티 등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM001','REGC03','동호회 등록','동호회 등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM001','REGC04','명함등록','명함등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM001','REGC05','동호회 게시판 등록','동호회 게시판 등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM001','REGC06','커뮤니티 게시판 등록','커뮤니티 게시판 등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM001','REGC07','게시판사용자등록','게시판사용자등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM002','HIST01','소프트웨어패치','소프트웨어패치','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM002','HIST02','소프트웨어설치','소프트웨어설치','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM002','HIST03','소프트웨어삭제','소프트웨어삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM002','HIST04','하드웨어업그레이드','하드웨어업그레이드','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM002','HIST05','하드웨어삭제','하드웨어삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM003','BBS','게시판','게시판','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM003','CLB','동호회','동호회','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM003','CMY','커뮤니티','커뮤니티','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM003','NCD','명함','명함','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM005','TMPT01','게시판템플릿','게시판템플릿','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM005','TMPT02','커뮤니티템플릿','커뮤니티템플릿','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM005','TMPT03','블로그템플릿','블로그템플릿','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF01','커뮤니티등록','커뮤니티등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF02','커뮤니티삭제','커뮤니티삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF03','동호회등록','동호회등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF04','동호회삭제','동호회삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF05','커뮤니티운영자등록','커뮤니티운영자등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF06','커뮤니티운영자삭제','커뮤니티운영자삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF07','동호회운영자등록','동호회운영자등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF08','동호회운영자삭제','동호회운영자삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF09','게시판이용등록','게시판이용등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF10','게시판삭제','게시판삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF11','커뮤니티사용자등록','커뮤니티사용자등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF12','커뮤니티사용자탈퇴','커뮤니티사용자탈퇴','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF13','동호회사용자등록','동호회사용자등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM006','CF14','동호회사용자탈퇴','동호회사용자탈퇴','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM007','AP01','승인요청','승인요청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM007','AP02','승인허가','승인허가','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM007','AP03','승인반려','승인반려','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM008','S01','전송요청','전송요청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM008','S02','전송완료','전송완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM008','S03','전송실패','전송실패','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM008','S04','수신요청','수신요청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM008','S05','수신완료','수신완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM008','S06','수신실패','수신실패','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM009','BBSA01','유효게시판','유효게시판','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM009','BBSA02','갤러리','갤러리','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM009','BBSA03','일반게시판','일반게시판','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM010','PRVA001','어플리케이션 관련 권한','어플리케이션 관련 권한','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM010','PRVB001','게시판 관련 권한','게시판 관련 권한','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM010','PRVC001','커뮤니티 관련 권한','커뮤니티 관련 권한','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM010','PRVD001','데이터베이스 관련 권한','데이터베이스 관련 권한','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM010','PRVS001','시스템 관련 권한(최상위 권한)','시스템 관련 권한(최상위 권한)','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM010','PRVU001','사용자 관련 권한','사용자 관련 권한','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA001','어플리케이션 관련 최상위 롤','어플리케이션 관련 최상위 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA002','업무 어플리케이션 접근 롤','업무 어플리케이션 접근 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA003','업무 어플리케이션 관리 롤','업무 어플리케이션 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA004','일반 어플리케이션 접근 롤','일반 어플리케이션 접근 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA005','일반 어프리케이션 관리 롤','일반 어프리케이션 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA006','어플리케이션 약관 관리 롤','어플리케이션 약관 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA007','어플리케이션 저작권 관리 롤','어플리케이션 저작권 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLA008','통계 및 보고서 접근 롤','통계 및 보고서 접근 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLB001','게시판 관련 최상위 롤','게시판 관련 최상위 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLB002','게시판 생성 롤','게시판 생성 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLB003','게시판 접근 롤','게시판 접근 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLB004','게시판 글쓰기 롤','게시판 글쓰기 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLB005','게시판 글 수정/삭제 롤','게시판 글 수정/삭제 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLC001','커뮤니티 관련 최상위 롤','커뮤니티 관련 최상위 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLC002','커뮤니티 생성 롤','커뮤니티 생성 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLC003','커뮤니티 접근 롤','커뮤니티 접근 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLC004','커뮤니티 글쓰기 롤','커뮤니티 글쓰기 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLC005','커뮤니티 글 수정/삭제 롤','커뮤니티 글 수정/삭제 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLC006','파일 업로드 롤','파일 업로드 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLD001','데이터베이스 관련 최상위 롤','데이터베이스 관련 최상위 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLD002','데이터베이스 스키마 등록/변경 롤','데이터베이스 스키마 등록/변경 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLD003','데이터 조회 롤','데이터 조회 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLD004','데이터 등록/변경 롤','데이터 등록/변경 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLS001','시스템 관리 최상위 롤','시스템 관리 최상위 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLS002','시스템 접근(view) 롤','시스템 접근(view) 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLS003','시스템 설정 등록/변경 롤','시스템 설정 등록/변경 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLS004','시스템 파일 등록/변경 롤','시스템 파일 등록/변경 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLU001','사용자 관련 최상위 롤','사용자 관련 최상위 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLU002','업무 시스템 사용자 관리 롤','업무 시스템 사용자 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLU003','기업회원 시스템 사용자 관리 롤','기업회원 시스템 사용자 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLU004','일반회원 시스템 사용자 관리 롤','일반회원 시스템 사용자 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLU005','게시판 사용자 관리 롤','게시판 사용자 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM011','ROLU006','커뮤니티 사용자 관리 롤','커뮤니티 사용자 관리 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM012','USR01','일반 회원 유형','일반 회원 유형','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM012','USR02','기업 회원 유형','기업 회원 유형','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM012','USR03','업무 담당자(사용자) 유형','업무 담당자(사용자) 유형','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM012','USR99','사용자 유형 최상위 롤','사용자 유형 최상위 롤','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM013','A','회원 가입 신청 상태','회원 가입 신청 상태','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM013','D','회원 가입 삭제 상태','회원 가입 삭제 상태','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM013','P','회원 가입 승인 상태','회원 가입 승인 상태','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM014','F','여자','여자','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM014','M','남자','남자','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM015','ATH01','주민등록번호 인증','주민등록번호 인증','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM015','ATH02','GPIN 인증','GPIN 인증','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM016','PUR01','프로그램 변경 요청 신청','프로그램 변경 요청 신청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM016','PUR02','프로그램 변경 요청 수락','프로그램 변경 요청 수락','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM016','PUR03','프로그램 변경 진행','프로그램 변경 진행','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM016','PUR04','프로그램 변경 완료','프로그램 변경 완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM016','PUR05','프로그램 변경 이관','프로그램 변경 이관','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM017','01','법정휴일','법정휴일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM017','02','법정공휴일','법정공휴일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM017','03','임시공휴일','임시공휴일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM018','1','객관식','객관식','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM018','2','주관식','주관식','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM019','A','높음','높음','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM019','B','보통','보통','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM019','C','낮음','낮음','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM020','1','부서일정관리','부서일정관리','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM020','2','일정관리','일정관리','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM021','1','기능설명','기능설명','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM021','2','절차설명','절차설명','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P01','가장 기억에 남는 장소는?','가장 기억에 남는 장소는?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P02','나의 좌우명은?','나의 좌우명은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P03','나의 보물 제1호는?','나의 보물 제1호는?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P04','가장 기억에 남는 선생님 성함은?','가장 기억에 남는 선생님 성함은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P05','다른 사람은 모르는 나만의 신체비밀은?','다른 사람은 모르는 나만의 신체비밀은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P06','오래도록 기억하고 싶은 날짜는?','오래도록 기억하고 싶은 날짜는?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P07','받았던 선물 중 기억에 남는 독특한 선물은?','받았던 선물 중 기억에 남는 독특한 선물은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P08','가장 생각나는 친구 이름은?','가장 생각나는 친구 이름은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P09','인상 깊게 읽은 책 이름은?','인상 깊게 읽은 책 이름은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P10','내가 존경하는 인물은?','내가 존경하는 인물은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P11','나의 노래방 애창곡은?','나의 노래방 애창곡은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P12','가장 감명깊게 본 영화는?','가장 감명깊게 본 영화는?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM022','P13','좋아하는 스포츠팀 이름은?','좋아하는 스포츠팀 이름은?','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM023','01','경제','경제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM023','02','전산','전산','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM023','03','행정','행정','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM024','C','완료','완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM024','F','실패','실패','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM024','R','요청','요청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM025','00000001','공공기관','공공기관','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM025','00000002','금융기관','금융기관','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM025','00000003','교육기관','교육기관','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM025','00000004','의료기관','의료기관','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM026','C0000001','대기업','대기업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM026','C0000002','중소기업','중소기업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM026','C0000003','다국적기업','다국적기업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','A','축산업','축산업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','B','어업','어업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','C','광업','광업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','D','제조업','제조업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','E','전기,가스및수도사업','전기,가스및수도사업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','F','건설업','건설업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','G','도소매 및 소비자용품수리업','도소매 및 소비자용품수리업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','H','숙박및음식점','숙박및음식점','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','I','운수창고및통신업','운수창고및통신업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','J','금융및보험업','금융및보험업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','K','부동산,임대및사업서비스업','부동산,임대및사업서비스업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','M','교육서비스업','교육서비스업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','N','보건업','보건업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','O','기타공공,사회및개인서비스업','기타공공,사회및개인서비스업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM027','P','가사서비스업','가사서비스업','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM028','1','접수대기','접수대기','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM028','2','접수','접수','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM028','3','완료','완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM029','method','METHOD','METHOD','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM029','pointcut','POINTCUT','POINTCUT','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM029','url','URL','URL','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM030','1','회의','회의','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM030','2','세미나','세미나','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM030','3','강의','강의','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM030','4','교육','교육','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM030','5','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM030','6','휴일','휴일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM031','1','당일','당일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM031','2','반복','반복','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM031','3','연속','연속','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM031','4','요일반복','요일반복','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC01','회원가입','회원가입','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC02','사용자등록','사용자등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC03','회원탈퇴','회원탈퇴','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC04','사용자삭제','사용자삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC05','커뮤니티등록','커뮤니티등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC06','동호회등록','동호회등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC07','커뮤니티폐쇄','커뮤니티폐쇄','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC08','동호회폐쇄','동호회폐쇄','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC09','게시판등록','게시판등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM032','WC10','게시판폐쇄','게시판폐쇄','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM033','C','생성','생성','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM033','D','삭제','삭제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM033','R','조회','조회','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM033','U','수정','수정','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM034','1','학생','학생','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM034','2','대학생','대학생','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM034','3','군인','군인','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM034','4','교사','교사','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM034','5','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM035','1','행사','행사','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM035','2','이벤트','이벤트','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM035','3','캠페인','캠페인','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM036','01','작성','작성','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM036','02','상신','상신','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM036','03','반려','반려','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM036','04','결재완료','결재완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM038','N','N','아니오','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM038','Y','Y','예','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','001','사회','사회','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','002','정치','정치','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','003','경제','경제','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','004','문화','문화','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','005','인문','인문','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','006','공학','공학','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM039','007','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM040','01','휴가계획서','휴가계획서','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM040','02','출장보고서','출장보고서','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM040','03','교육보고서','교육보고서','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM040','04','판품요청서','판품요청서','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM040','05','지원요청서','지원요청서','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM041','001','절차설명','절차설명','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM041','002','기능설명','기능설명','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM041','003','기타설명','기타설명','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM042','%Y','연도별','연도별','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM042','%Y-%m','월별','월별','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM042','%Y-%m-%d','일별','일별','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM043','01','생성','생성','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM043','02','변경','변경','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM043','03','말소','말소','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM044','00','수신처리','수신처리','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM044','01','처리완료','처리완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM044','10','기등록','기등록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM044','11','생성오류','생성오류','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM044','12','변경오류','변경오류','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM044','13','말소오류','말소오류','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM046','01','정상','정상','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM046','02','비정상','비정상','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM047','01','매일','매일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM047','02','매주','매주','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM047','03','매월','매월','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM047','04','매년','매년','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM047','05','한번만','한번만','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM048','01','Oracle','Oracle','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM048','02','Mysql','Mysql','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM048','03','Tibero','Tibero','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM048','04','Altibase','Altibase','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM049','01','Tar','Tar','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM049','02','ZIP','ZIP','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM050','1','수신','수신','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM050','2','참조','참조','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM051','01','신청중','신청중','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM051','02','승인','승인','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM051','03','반려','반려','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM052','01','양력','양력','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM052','02','음력','음력','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM053','01','교육','교육','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM053','02','세미나','세미나','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM053','03','홍보','홍보','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM053','04','단합','단합','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM053','05','간담회','간담회','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM053','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM054','01','결혼','결혼','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM054','02','출생','출생','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM054','03','회갑','회갑','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM054','04','사망','사망','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM054','05','출산','출산','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM054','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM055','01','우수사원','우수사원','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM055','02','우수팀','우수팀','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM055','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM056','01','연차휴가','연차휴가','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM056','02','반차휴가','반차휴가','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM056','03','무급휴가','무급휴가','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM056','04','유급휴가','유급휴가','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM056','05','대체휴가','대체휴가','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM056','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM057','1','회의','회의','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM057','2','방문','방문','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM057','3','세미나','세미나','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM057','4','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM058','1','반복없음','당일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM058','2','매일','매일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM058','3','매주','매주','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM058','4','매월','매월','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM059','1','높음','높음','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM059','2','보통','보통','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM059','3','낮음','낮음','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM060','1','주간보고','주간보고','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM060','2','월간보고','월간보고','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM061','1','재실','재실','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM061','2','자리비움','자리비움','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM061','3','회의중','회의중','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM061','4','출장중','출장중','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM061','5','휴가중','휴가중','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','100','Continue ','Continue ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','101','Switching Protocols ','Switching Protocols ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','200','OK ','OK ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','201','Created ','Created ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','202','Accepted ','Accepted ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','203','Non-Authoritative Information ','Non-Authoritative Information ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','204','No Content ','No Content ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','205','Reset Content ','Reset Content ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','206','Partial Content ','Partial Content ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','300','Multiple Choices ','Multiple Choices ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','301','Moved Permanently ','Moved Permanently ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','302','Found ','Found ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','303','See Other ','See Other ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','304','Not Modified ','Not Modified ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','305','Use Proxy ','Use Proxy ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','307','Temporary Redirect ','Temporary Redirect ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','400','Bad Request ','Bad Request ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','401','Unauthorized ','Unauthorized ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','403','Forbidden ','Forbidden ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','404','Not Found ','Not Found ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','405','Method Not Allowed ','Method Not Allowed ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','406','Not Acceptable ','Not Acceptable ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','407','Proxy Authentication Required ','Proxy Authentication Required ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','408','Request Timeout ','Request Timeout ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','409','Conflict ','Conflict ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','410','Gone ','Gone ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','411','Length Required ','Length Required ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','412','Precondition Failed ','Precondition Failed ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','413','Request Entity Too Large ','Request Entity Too Large ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','414','Request URI Too Long ','Request URI Too Long ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','415','Unsupported Media Type ','Unsupported Media Type ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','416','Requested Range Not Satisfiable ','Requested Range Not Satisfiable ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','417','Expectation Failed ','Expectation Failed ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','500','Internal Server Error ','Internal Server Error ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','501','Not Implemented ','Not Implemented ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','502','Bad Gateway ','Bad Gateway ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','503','Service Unavailable ','Service Unavailable ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','504','Gateway Timeout ','Gateway Timeout ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM062','505','HTTP Version Not Supported ','HTTP Version Not Supported ','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM063','100','Runnable','Runnable','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM063','200','Sleeping','Sleeping','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM063','300','Swapped','Swapped','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM063','400','Zombie','Zombie','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM063','500','Stopped','Stopped','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM064','01','웹 서버','웹 서버','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM064','02','WAS','WAS','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM064','03','DB 서버','DB 서버','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM064','04','Mail 서버','Mail 서버','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM064','05','DNS 서버','DNS 서버','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM064','99','기타 서버','기타 서버','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','01','네트워크 장애','네트워크 장애','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','02','하드웨어 장애','하드웨어 장애','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','03','어플리케이션 장애','어플리케이션 장애','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','04','서비스 장애','서비스 장애','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','05','모니터링 장애','모니터링 장애','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','06','정전','정전','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','07','화재','화재','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','08','홍수','홍수','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM065','99','기타 장애','기타 장애','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM066','01','CPU','CPU','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM066','02','메모리','메모리','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM067','01','서버','서버','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM067','02','라우터','라우터','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM067','03','스위치','스위치','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM067','04','PC','PC','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM067','05','프린터','프린터','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM067','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM068','A','접수','접수','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM068','C','완료','완료','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM068','R','요청','요청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','01','생일','생일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','02','기념','기념','N','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','03','결혼','결혼','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','04','탄생','탄생','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','05','축하','축하','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','06','출장','출장','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','07','퇴원','퇴원','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM069','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','01','본관1층','본관1층','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','02','본관2층','본관2층','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','03','본관3층','본관3층','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','04','본관4층','본관4층','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','05','본관5층','본관5층','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','06','별관1층','별관1층','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','07','별관2층','별관2층','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM070','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','01','전기시설','전기시설','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','02','소등상태','소등상태','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','03','방화요소','방화요소','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','04','소방시설','소방시설','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','05','비상 KEY','비상 KEY','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','06','시건장치','시건장치','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM071','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM072','01','정상','정상','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM072','02','오류','오류','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM072','03','중지','중지','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM072','09','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','01','본인','본인','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','02','배우자','배우자','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','03','자녀','자녀','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','04','부친','부친','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','05','모친','모친','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','06','배우자부친','배우자부친','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','07','배우자모친','배우자모친','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','08','조부','조부','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','09','조모','조모','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','10','형제자매(본인)','형제자매(본인)','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','11','외조부','외조부','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','12','외조모','외조모','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','13','백숙부','백숙부','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','14','백숙모','백숙모','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','15','형제자매(배우자)','형제자매(배우자)','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM073','99','기타','기타','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','1','일요일','일요일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','2','월요일','월요일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','3','화요일','화요일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','4','수요일','수요일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','5','목요일','목요일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','6','금요일','금요일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM074','7','토요일','토요일','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM075','001','경조신청','경조신청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM075','002','포상신청','포상신청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM075','003','휴가신청','휴가신청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM075','004','행사신청','행사신청','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM076','01','정상','정상','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM076','02','비정상','비정상','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM076','03','수행중','수행중','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM101','BBST01','통합게시판','통합게시판','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM101','BBST02','블로그형게시판','블로그형게시판','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM101','BBST03','방명록','방명록','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM102','1','표준어','표준어','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM'),('COM102','2','동의어','동의어','Y','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM');

#
# Structure for table "tb_com_emply"
#

DROP TABLE IF EXISTS `tb_com_emply`;
CREATE TABLE `tb_com_emply` (
  `SCRTY_DTRMN_TRGET_ID` varchar(20) NOT NULL,
  `MBER_TY_CODE` char(5) DEFAULT NULL,
  `AUTHOR_CODE` varchar(30) NOT NULL,
  PRIMARY KEY (`SCRTY_DTRMN_TRGET_ID`),
  UNIQUE KEY `COMTNEMPLYRSCRTYESTBS_PK` (`SCRTY_DTRMN_TRGET_ID`),
  KEY `COMTNEMPLYRSCRTYESTBS_i04` (`AUTHOR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_emply"
#

INSERT INTO `tb_com_emply` VALUES ('USRCNFRM_00000000000','USR03','ROLE_ADMIN'),('USRCNFRM_00000000001','USR01','ROLE_USER'),('USRCNFRM_00000000002','USR02','ROLE_USER'),('USRCNFRM_00000000003','USR03','ROLE_USER'),('USRCNFRM_99999999999','USR03','ROLE_ADMIN');

#
# Structure for table "tb_com_file"
#

DROP TABLE IF EXISTS `tb_com_file`;
CREATE TABLE `tb_com_file` (
  `ATCH_FILE_ID` char(20) NOT NULL,
  `CREAT_DT` datetime NOT NULL,
  `USE_AT` char(1) DEFAULT NULL,
  PRIMARY KEY (`ATCH_FILE_ID`),
  UNIQUE KEY `COMTNFILE_PK` (`ATCH_FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_file"
#

INSERT INTO `tb_com_file` VALUES ('FILE_000000000000021','2023-05-07 18:45:51','Y'),('FILE_000000000000031','2023-05-07 18:50:10','Y'),('FILE_000000000000061','2023-05-07 23:06:58','Y'),('FILE_000000000000071','2023-05-08 00:26:11','Y'),('FILE_000000000000074','2023-05-08 00:27:57','Y'),('FILE_000000000000076','2023-05-08 00:28:29','Y'),('FILE_000000000000081','2023-05-08 00:33:10','Y'),('FILE_000000000000084','2023-05-08 00:35:20','Y'),('FILE_000000000000088','2023-05-08 00:36:57','Y'),('FILE_000000000000089','2023-05-08 00:37:11','Y'),('FILE_000000000000090','2023-05-08 00:39:30','Y'),('FILE_000000000000091','2023-05-08 00:39:43','Y'),('FILE_000000000000102','2023-05-08 00:57:23','Y'),('FILE_000000000000117','2023-05-08 01:13:24','Y'),('FILE_000000000000121','2023-05-08 01:26:44','Y'),('FILE_000000000000131','2023-05-08 01:28:42','Y'),('FILE_000000000000152','2023-05-08 01:32:56','Y'),('FILE_000000000000155','2023-05-08 01:34:45','Y'),('FILE_000000000000157','2023-05-08 01:34:56','Y'),('FILE_000000000000159','2023-05-08 01:37:37','Y'),('FILE_000000000000160','2023-05-08 01:38:01','Y'),('FILE_000000000000162','2023-05-08 01:44:14','Y'),('FILE_000000000000164','2023-05-08 01:45:00','Y'),('FILE_000000000000166','2023-05-08 01:45:43','Y'),('FILE_000000000000167','2023-05-08 01:46:10','Y'),('FILE_000000000000171','2023-05-08 02:02:33','Y'),('FILE_000000000000202','2023-05-09 00:39:36','Y'),('FILE_000000000000211','2023-05-09 00:44:57','Y'),('FILE_000000000000212','2023-05-09 00:44:57','Y'),('FILE_000000000000221','2023-05-09 01:05:48','Y'),('FILE_000000000000231','2023-05-09 01:07:47','Y'),('FILE_000000000000233','2023-05-09 07:35:38','Y'),('FILE_000000000000234','2023-05-09 07:35:45','Y'),('FILE_000000000000235','2023-05-09 07:35:49','Y'),('FILE_000000000000236','2023-05-09 07:36:09','Y'),('FILE_000000000000237','2023-05-09 07:36:16','Y');

#
# Structure for table "tb_com_file_detail"
#

DROP TABLE IF EXISTS `tb_com_file_detail`;
CREATE TABLE `tb_com_file_detail` (
  `ATCH_FILE_ID` char(20) NOT NULL,
  `FILE_SN` decimal(10,0) NOT NULL,
  `FILE_STRE_COURS` varchar(2000) NOT NULL,
  `STRE_FILE_NM` varchar(255) NOT NULL,
  `ORIGNL_FILE_NM` varchar(255) DEFAULT NULL,
  `FILE_EXTSN` varchar(20) NOT NULL,
  `FILE_CN` mediumtext DEFAULT NULL,
  `FILE_SIZE` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`ATCH_FILE_ID`,`FILE_SN`),
  UNIQUE KEY `COMTNFILEDETAIL_PK` (`ATCH_FILE_ID`,`FILE_SN`),
  KEY `COMTNFILEDETAIL_i01` (`ATCH_FILE_ID`),
  CONSTRAINT `COMTNFILEDETAIL_FK1` FOREIGN KEY (`ATCH_FILE_ID`) REFERENCES `tb_com_file` (`ATCH_FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_file_detail"
#

INSERT INTO `tb_com_file_detail` VALUES ('FILE_000000000000021',0,'/upload_dir/','NOTICE_202305070645516100','1.xlsx','xlsx','',6591),('FILE_000000000000031',0,'/upload_dir/','NOTICE_202305070650102210','index.zip','zip','',648),('FILE_000000000000061',0,'/upload_dir/','NOTICE_202305071106586200','6dda4ef7348ca8ef490a6e1255cdb382.jpg','jpg','',192289),('FILE_000000000000071',0,'/upload_dir/','CK_202305081226116140','사망.jpg','jpg','',6013),('FILE_000000000000074',0,'/upload_dir/','CK_202305081227575720','라이센스.jpg','jpg','',400754),('FILE_000000000000076',0,'/upload_dir/','CK_202305081228294860','라이센스.jpg','jpg','',400754),('FILE_000000000000081',0,'/upload_dir/','CK_202305081233101200','라이센스.jpg','jpg','',400754),('FILE_000000000000084',0,'/upload_dir/','CK_202305081235209080','제목을 입력해주세요_-001.png','png','',2928),('FILE_000000000000088',0,'/upload_dir/','CK_202305081236578690','라이센스.jpg','jpg','',400754),('FILE_000000000000089',0,'/upload_dir/','CK_202305081237112090','CSAP_진행이력.png','png','',36673),('FILE_000000000000090',0,'/upload_dir/','CK_202305081239305790','220527-3.png','png','',14467140),('FILE_000000000000091',0,'/upload_dir/','CK_202305081239436530','220527-0.png','png','',14730976),('FILE_000000000000102',0,'/upload_dir/','CK_202305081257239150','1729546651_pF1wmgld_22585ba4207181e14f86f552303204a5ddd25ccc.gif','gif','',3499350),('FILE_000000000000117',0,'/upload_dir/','CK_202305080113240410','1729546651_pF1wmgld_22585ba4207181e14f86f552303204a5ddd25ccc.gif','gif','',3499350),('FILE_000000000000121',0,'/upload_dir/','CK_202305080126445700','1729546651_pF1wmgld_22585ba4207181e14f86f552303204a5ddd25ccc.gif','gif','',3499350),('FILE_000000000000131',0,'/upload_dir/','CK_202305080128423130','i013226387742.gif','gif','',1948746),('FILE_000000000000152',0,'/upload_dir/','CK_202305080132566820','1729546651_pF1wmgld_22585ba4207181e14f86f552303204a5ddd25ccc.gif','gif','',3499350),('FILE_000000000000155',0,'/upload_dir/','CK_202305080134457540','780583_1611758581.gif','gif','',7716414),('FILE_000000000000157',0,'/upload_dir/','CK_202305080134566530','i013226387742.gif','gif','',1948746),('FILE_000000000000159',0,'/upload_dir/','CK_202305080137373500','osa789.gif','gif','',5097712),('FILE_000000000000160',0,'/upload_dir/','CK_202305080138015500','osa789.gif','gif','',5097712),('FILE_000000000000162',0,'/upload_dir/','CK_202305080144142340','osa789.gif','gif','',5097712),('FILE_000000000000164',0,'/upload_dir/','CK_202305080145002220','682119_1611758367.gif','gif','',4701476),('FILE_000000000000166',0,'/upload_dir/','NOTICE_202305080145437340','index.zip','zip','',648),('FILE_000000000000167',0,'/upload_dir/','NOTICE_202305080146105470','index.zip','zip','',648),('FILE_000000000000171',0,'/upload_dir/','CK_202305080202337190','Pure-Media-Vol.148-Aram-MrCong.com-025.jpg','jpg','',57276),('FILE_000000000000211',1,'/upload_dir/','NOTICE_202305090109010431','230185_1611758377.gif','gif','',6355638),('FILE_000000000000212',0,'/upload_dir/','NOTICE_202305091244571370','Pure-Media-Vol.148-Aram-MrCong.com-003.jpg','jpg','',134685),('FILE_000000000000221',0,'/upload_dir/','CK_202305090105486230','230185_1611758377.gif','gif','',6355638),('FILE_000000000000231',0,'/upload_dir/','CK_202305090107471530','230185_1611758377.gif','gif','',6355638),('FILE_000000000000233',0,'/upload_dir/','CK_202305090735380740','780583_1611758581.gif','gif','',7716414),('FILE_000000000000234',0,'/upload_dir/','CK_202305090735457780','1729546651_pF1wmgld_22585ba4207181e14f86f552303204a5ddd25ccc.gif','gif','',3499350),('FILE_000000000000235',0,'/upload_dir/','CK_202305090735494750','i013226387742.gif','gif','',1948746),('FILE_000000000000236',0,'/upload_dir/','CK_202305090736097920','k9qe7c.gif','gif','',14311662),('FILE_000000000000237',0,'/upload_dir/','CK_202305090736165860','osa789.gif','gif','',5097712);

#
# Structure for table "tb_com_holiday_mgt"
#

DROP TABLE IF EXISTS `tb_com_holiday_mgt`;
CREATE TABLE `tb_com_holiday_mgt` (
  `RESTDE_NO` decimal(6,0) NOT NULL,
  `RESTDE` char(8) DEFAULT NULL,
  `RESTDE_NM` varchar(60) DEFAULT NULL,
  `RESTDE_DC` varchar(200) DEFAULT NULL,
  `RESTDE_SE_CODE` varchar(2) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RESTDE_NO`),
  UNIQUE KEY `COMTNRESTDE_PK` (`RESTDE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_holiday_mgt"
#


#
# Structure for table "tb_com_loginpolicy"
#

DROP TABLE IF EXISTS `tb_com_loginpolicy`;
CREATE TABLE `tb_com_loginpolicy` (
  `EMPLYR_ID` varchar(20) NOT NULL,
  `IP_INFO` varchar(23) NOT NULL,
  `DPLCT_PERM_AT` char(1) NOT NULL,
  `LMTT_AT` char(1) NOT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  PRIMARY KEY (`EMPLYR_ID`),
  UNIQUE KEY `COMTNLOGINPOLICY_PK` (`EMPLYR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_loginpolicy"
#


#
# Structure for table "tb_com_orgnztinfo"
#

DROP TABLE IF EXISTS `tb_com_orgnztinfo`;
CREATE TABLE `tb_com_orgnztinfo` (
  `ORGNZT_ID` char(20) NOT NULL,
  `ORGNZT_NM` varchar(20) NOT NULL,
  `ORGNZT_DC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ORGNZT_ID`),
  UNIQUE KEY `COMTNORGNZTINFO_PK` (`ORGNZT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_orgnztinfo"
#

INSERT INTO `tb_com_orgnztinfo` VALUES ('ORGNZT_0000000000000','기본조직','기본조직');

#
# Structure for table "tb_account_admin_mgt"
#

DROP TABLE IF EXISTS `tb_account_admin_mgt`;
CREATE TABLE `tb_account_admin_mgt` (
  `EMPLYR_ID` varchar(20) NOT NULL,
  `ORGNZT_ID` char(20) DEFAULT NULL,
  `USER_NM` varchar(60) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `EMPL_NO` varchar(20) DEFAULT NULL,
  `IHIDNUM` varchar(200) DEFAULT NULL,
  `SEXDSTN_CODE` char(1) DEFAULT NULL,
  `BRTHDY` char(20) DEFAULT NULL,
  `FXNUM` varchar(20) DEFAULT NULL,
  `HOUSE_ADRES` varchar(100) NOT NULL,
  `PASSWORD_HINT` varchar(100) NOT NULL,
  `PASSWORD_CNSR` varchar(100) NOT NULL,
  `HOUSE_END_TELNO` varchar(4) NOT NULL,
  `AREA_NO` varchar(4) NOT NULL,
  `DETAIL_ADRES` varchar(100) DEFAULT NULL,
  `ZIP` varchar(6) NOT NULL,
  `OFFM_TELNO` varchar(20) DEFAULT NULL,
  `MBTLNUM` varchar(20) DEFAULT NULL,
  `EMAIL_ADRES` varchar(50) DEFAULT NULL,
  `OFCPS_NM` varchar(60) DEFAULT NULL,
  `HOUSE_MIDDLE_TELNO` varchar(4) NOT NULL,
  `GROUP_ID` char(20) DEFAULT NULL,
  `PSTINST_CODE` char(8) DEFAULT NULL,
  `EMPLYR_STTUS_CODE` char(1) NOT NULL,
  `ESNTL_ID` char(20) NOT NULL,
  `CRTFC_DN_VALUE` varchar(100) DEFAULT NULL,
  `SBSCRB_DE` datetime DEFAULT NULL,
  `LOCK_AT` char(1) DEFAULT NULL,
  `LOCK_CNT` decimal(3,0) DEFAULT NULL,
  `LOCK_LAST_PNTTM` datetime DEFAULT NULL,
  `CHG_PWD_LAST_PNTTM` datetime DEFAULT NULL,
  PRIMARY KEY (`EMPLYR_ID`),
  UNIQUE KEY `COMTNEMPLYRINFO_PK` (`EMPLYR_ID`),
  KEY `COMTNEMPLYRINFO_i01` (`ORGNZT_ID`),
  KEY `COMTNEMPLYRINFO_i02` (`GROUP_ID`),
  CONSTRAINT `COMTNEMPLYRINFO_FK1` FOREIGN KEY (`GROUP_ID`) REFERENCES `tb_com_authgroup` (`GROUP_ID`) ON DELETE SET NULL,
  CONSTRAINT `COMTNEMPLYRINFO_FK2` FOREIGN KEY (`ORGNZT_ID`) REFERENCES `tb_com_orgnztinfo` (`ORGNZT_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_account_admin_mgt"
#

INSERT INTO `tb_account_admin_mgt` VALUES ('TEST1','ORGNZT_0000000000000','테스트1','raHLBnHFcunwNzcDcfad4PhD11hHgXSUr7fc1Jk9uoQ=','20112059',NULL,'F','20111130','1566-2059','서울 중구 무교동 한국정보화진흥원','P01','전자정부표준프레임워크센터','2059','02','전자정부표준프레임워크센터','100775','1566-2059','1566-2059','egovframesupport@gmail.com','관리자','1566','GROUP_00000000000000','00000001','P','USRCNFRM_00000000000','','2022-07-30 10:41:51',NULL,NULL,NULL,NULL),('webmaster','ORGNZT_0000000000000','웹마스터','78gXjfDDMzepOP4QTiFMRFOT/msFgKkHIgGOU95PT94=','20112060',NULL,'F','20111130','1566-2059','서울특별시 중구 청계천로 14 - 0 한국정보사회진흥원','P01','전자정부표준프레임워크센터','2059','02','전자정부표준프레임워크센터','100775','1566-2059','1566-2059','egovframesupport@gmail.com','웹관리자','1566','GROUP_00000000000000','00000001','P','USRCNFRM_99999999999','','2022-07-30 10:41:51',NULL,NULL,NULL,NULL);

#
# Structure for table "tb_com_progrmlist"
#

DROP TABLE IF EXISTS `tb_com_progrmlist`;
CREATE TABLE `tb_com_progrmlist` (
  `PROGRM_FILE_NM` varchar(60) NOT NULL,
  `PROGRM_STRE_PATH` varchar(100) NOT NULL,
  `PROGRM_KOREAN_NM` varchar(60) DEFAULT NULL,
  `PROGRM_DC` varchar(200) DEFAULT NULL,
  `URL` varchar(100) NOT NULL,
  PRIMARY KEY (`PROGRM_FILE_NM`),
  UNIQUE KEY `COMTNPROGRMLIST_PK` (`PROGRM_FILE_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_progrmlist"
#

INSERT INTO `tb_com_progrmlist` VALUES ('dir','dir','디렉토리','디렉토리','dir'),('공지사항 게시판','/user/board/notice','공지사항 게시판 목록','공지사항 게시판 목록','/user/board/notice/BoardNoticeList.do'),('동영상 컨텐츠','/user/content/vcm','사용자 비디오 콘텐츠','사용자 비디오 콘텐츠 관리','/user/content/vcm/VideoContentMgt.do'),('임시메뉴생성용','/test/test','테스트메뉴','/test/test/test.do','/test/test/test.do'),('텍스트 콘텐츠','/user/content/tcm','텍스트 콘텐츠 관리','텍스트 콘텐츠 관리','/user/content/tcm/TextContentMgt.do');

#
# Structure for table "tb_com_menuinfo"
#

DROP TABLE IF EXISTS `tb_com_menuinfo`;
CREATE TABLE `tb_com_menuinfo` (
  `MENU_NM` varchar(60) NOT NULL,
  `PROGRM_FILE_NM` varchar(60) NOT NULL,
  `MENU_NO` decimal(20,0) NOT NULL,
  `UPPER_MENU_NO` decimal(20,0) DEFAULT NULL,
  `MENU_ORDR` decimal(5,0) NOT NULL,
  `MENU_DC` varchar(250) DEFAULT NULL,
  `RELATE_IMAGE_PATH` varchar(100) DEFAULT NULL,
  `RELATE_IMAGE_NM` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`MENU_NO`),
  UNIQUE KEY `COMTNMENUINFO_PK` (`MENU_NO`),
  KEY `COMTNMENUINFO_FK2` (`PROGRM_FILE_NM`),
  KEY `COMTNMENUINFO_i02` (`UPPER_MENU_NO`),
  CONSTRAINT `COMTNMENUINFO_FK1` FOREIGN KEY (`UPPER_MENU_NO`) REFERENCES `tb_com_menuinfo` (`MENU_NO`) ON DELETE CASCADE,
  CONSTRAINT `COMTNMENUINFO_FK2` FOREIGN KEY (`PROGRM_FILE_NM`) REFERENCES `tb_com_progrmlist` (`PROGRM_FILE_NM`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_menuinfo"
#

INSERT INTO `tb_com_menuinfo` VALUES ('root','dir',0,0,1,'root','/','/'),('자유 공모전','텍스트 콘텐츠',1000,0,1,'자유 공모 게시판','/','/'),('프리미엄','텍스트 콘텐츠',1010,0,2,'프리미엄 공모 게시판','/','/'),('랭킹','텍스트 콘텐츠',1020,0,3,'랭킹','/','/'),('내 서재','텍스트 콘텐츠',1030,0,4,'좋아요 및 즐겨찾기 작품','/','/'),('고객지원','공지사항 게시판',2000,0,1,'게시판','/','/'),('공지사항','공지사항 게시판',2010,2000,1,'','/','/'),('질문게시판','임시메뉴생성용',2020,2000,2,'질문게시판','/','/');

#
# Structure for table "tb_com_progrmlog"
#

DROP TABLE IF EXISTS `tb_com_progrmlog`;
CREATE TABLE `tb_com_progrmlog` (
  `PROGRM_FILE_NM` varchar(60) NOT NULL,
  `REQUST_NO` decimal(10,0) NOT NULL,
  `RQESTER_ID` varchar(20) NOT NULL,
  `CHANGE_REQUST_CN` varchar(1000) DEFAULT NULL,
  `REQUST_PROCESS_CN` mediumtext DEFAULT NULL,
  `OPETR_ID` varchar(20) DEFAULT NULL,
  `PROCESS_STTUS_CODE` varchar(15) NOT NULL,
  `PROCESS_DE` char(20) DEFAULT NULL,
  `RQESTDE` char(20) DEFAULT NULL,
  `REQUST_SJ` varchar(60) NOT NULL,
  PRIMARY KEY (`PROGRM_FILE_NM`,`REQUST_NO`),
  UNIQUE KEY `COMTHPROGRMCHANGEDTLS_PK` (`PROGRM_FILE_NM`,`REQUST_NO`),
  KEY `COMTHPROGRMCHANGEDTLS_i01` (`PROGRM_FILE_NM`),
  CONSTRAINT `COMTHPROGRMCHANGEDTLS_FK1` FOREIGN KEY (`PROGRM_FILE_NM`) REFERENCES `tb_com_progrmlist` (`PROGRM_FILE_NM`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_progrmlog"
#


#
# Structure for table "tb_com_role_hierarchy"
#

DROP TABLE IF EXISTS `tb_com_role_hierarchy`;
CREATE TABLE `tb_com_role_hierarchy` (
  `PARNTS_ROLE` varchar(30) NOT NULL,
  `CHLDRN_ROLE` varchar(30) NOT NULL,
  PRIMARY KEY (`PARNTS_ROLE`,`CHLDRN_ROLE`),
  UNIQUE KEY `COMTNROLES_HIERARCHY_PK` (`PARNTS_ROLE`,`CHLDRN_ROLE`),
  UNIQUE KEY `COMTNROLES_HIERARCHY_i01` (`PARNTS_ROLE`),
  KEY `COMTNROLES_HIERARCHY_i02` (`CHLDRN_ROLE`),
  CONSTRAINT `COMTNROLES_HIERARCHY_FK1` FOREIGN KEY (`PARNTS_ROLE`) REFERENCES `tb_com_authinfo` (`AUTHOR_CODE`) ON DELETE CASCADE,
  CONSTRAINT `COMTNROLES_HIERARCHY_FK2` FOREIGN KEY (`CHLDRN_ROLE`) REFERENCES `tb_com_authinfo` (`AUTHOR_CODE`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_role_hierarchy"
#

INSERT INTO `tb_com_role_hierarchy` VALUES ('IS_AUTHENTICATED_ANONYMOUSLY','IS_AUTHENTICATED_REMEMBERED'),('IS_AUTHENTICATED_FULLY','ROLE_USER'),('IS_AUTHENTICATED_REMEMBERED','IS_AUTHENTICATED_FULLY'),('ROLE_ANONYMOUS','IS_AUTHENTICATED_ANONYMOUSLY'),('ROLE_USER','ROLE_ADMIN');

#
# Structure for table "tb_com_roleinfo"
#

DROP TABLE IF EXISTS `tb_com_roleinfo`;
CREATE TABLE `tb_com_roleinfo` (
  `ROLE_CODE` varchar(50) NOT NULL,
  `ROLE_NM` varchar(60) NOT NULL,
  `ROLE_PTTRN` varchar(300) DEFAULT NULL,
  `ROLE_DC` varchar(200) DEFAULT NULL,
  `ROLE_TY` varchar(80) DEFAULT NULL,
  `ROLE_SORT` varchar(10) DEFAULT NULL,
  `ROLE_CREAT_DE` char(20) NOT NULL,
  PRIMARY KEY (`ROLE_CODE`),
  UNIQUE KEY `COMTNROLEINFO_PK` (`ROLE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_roleinfo"
#

INSERT INTO `tb_com_roleinfo` VALUES ('web-000001','로그인롤','\\A/uat/uia/.*\\.do.*\\Z','로그인허용을 위한 롤','url','1','2022-07-30 10:41:51'),('web-000002','좌측메뉴','/EgovLeft.do','좌측 메뉴에 대한 접근 제한 롤','url','2','2022-07-30 10:41:51'),('web-000003','모든접근제한','\\A/.*\\.do.*\\Z','모든자원에 대한 접근 제한 롤','url','3','2022-07-30 10:41:51'),('web-000004','회원관리','\\A/uss/umt/.*\\.do.*\\Z','회원관리에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000005','실명확인','\\A/sec/rnc/.*\\.do.*\\Z','실명확인에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000006','우편번호','\\A/sym/ccm/zip/.*\\.do.*\\Z','우편번호관리에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000007','로그인이미지','\\A/uss/ion/lsi/.*\\.do.*\\Z','로그인이미지관리에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000008','파일다운로드','/cmm/fms/FileDown.do.*','파일다운로드에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000009','상단메뉴','/EgovTop.do','상단메뉴에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000010','하단메뉴','/EgovBottom.do','하단메뉴에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000011','왼쪽메뉴','/EgovLeft.do','왼쪽메뉴에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51'),('web-000012','관리자페이지','\\A/admin/.*\\.do.*\\Z','관리자메뉴에 대한 접근 제한 롤','url','1','2022-07-30 10:41:51');

#
# Structure for table "tb_com_author_role"
#

DROP TABLE IF EXISTS `tb_com_author_role`;
CREATE TABLE `tb_com_author_role` (
  `AUTHOR_CODE` varchar(30) NOT NULL,
  `ROLE_CODE` varchar(50) NOT NULL,
  `CREAT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`AUTHOR_CODE`,`ROLE_CODE`),
  UNIQUE KEY `COMTNAUTHORROLERELATE_PK` (`AUTHOR_CODE`,`ROLE_CODE`),
  KEY `COMTNAUTHORROLERELATE_i01` (`AUTHOR_CODE`),
  KEY `COMTNAUTHORROLERELATE_i02` (`ROLE_CODE`),
  CONSTRAINT `COMTNAUTHORROLERELATE_FK2` FOREIGN KEY (`ROLE_CODE`) REFERENCES `tb_com_roleinfo` (`ROLE_CODE`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_author_role"
#

INSERT INTO `tb_com_author_role` VALUES ('ROLE_ADMIN','web-000003','2022-07-30 10:41:51'),('ROLE_ANONYMOUS','web-000001','2022-07-30 10:41:51'),('ROLE_ANONYMOUS','web-000002','2022-07-30 10:41:51'),('ROLE_ANONYMOUS','web-000007','2022-07-30 10:41:51'),('ROLE_ANONYMOUS','web-000009','2022-07-30 10:41:51'),('ROLE_ANONYMOUS','web-000010','2022-07-30 10:41:51'),('ROLE_ANONYMOUS','web-000011','2022-07-30 10:41:51'),('ROLE_USER','web-000003','2022-07-30 10:41:51');

#
# Structure for table "tb_com_sendmail"
#

DROP TABLE IF EXISTS `tb_com_sendmail`;
CREATE TABLE `tb_com_sendmail` (
  `MSSAGE_ID` varchar(20) NOT NULL,
  `EMAIL_CN` mediumtext DEFAULT NULL,
  `SNDR` varchar(50) NOT NULL,
  `RCVER` varchar(50) NOT NULL,
  `SJ` varchar(60) NOT NULL,
  `SNDNG_RESULT_CODE` char(1) DEFAULT NULL,
  `DSPTCH_DT` char(20) NOT NULL,
  `ATCH_FILE_ID` char(20) DEFAULT NULL,
  PRIMARY KEY (`MSSAGE_ID`),
  UNIQUE KEY `COMTHEMAILDSPTCHMANAGE_PK` (`MSSAGE_ID`),
  KEY `COMTHEMAILDSPTCHMANAGE_i01` (`SNDR`),
  KEY `COMTHEMAILDSPTCHMANAGE_i02` (`ATCH_FILE_ID`),
  CONSTRAINT `COMTHEMAILDSPTCHMANAGE_FK1` FOREIGN KEY (`ATCH_FILE_ID`) REFERENCES `tb_com_file` (`ATCH_FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_sendmail"
#


#
# Structure for table "tb_com_seq"
#

DROP TABLE IF EXISTS `tb_com_seq`;
CREATE TABLE `tb_com_seq` (
  `TABLE_NAME` varchar(20) NOT NULL,
  `NEXT_ID` decimal(30,0) DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`),
  UNIQUE KEY `COMTECOPSEQ_PK` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_seq"
#

INSERT INTO `tb_com_seq` VALUES ('ADBKUSER_ID',1),('ADBK_ID',1),('ADMINIST_WORD_ID',1),('ADMIN_CODE_OPERT',1),('ANN_ID',1),('ANSWER_NO',1),('BACKUP_OPERT_ID',1),('BACKUP_RESULT_ID',1),('BANNER_ID',1),('BATCH_OPERT_ID',1),('BATCH_RESULT_ID',1),('BATCH_SCHDUL_ID',1),('BBS_ID',1),('CLB_ID',1),('CMMNTY_ID',1),('CNSLT_ID',1),('CNTC_ID',1),('CNTC_MESSAGE_ID',1),('CNTNTS_ID',1),('COMTECOPSEQ',1),('CPYRHT_ID',1),('CTSNN_ID',1),('DAM_ID',1),('DB_MNTRNG_LOG_ID',1),('DEPT_JOB_BX_ID',1),('DEPT_JOB_ID',1),('DIARY_ID',1),('DUS_ID',1),('EVENTINFO_ID',1),('EVENT_ID',1),('EXTRLHRINFO_ID',1),('FAQ_ID',1),('FILESYS_LOGID',1),('FILESYS_MNTRNG',1),('FILE_ID',341),('GROUP_ID',1),('HPCM_ID',1),('HTTL_ID',1),('HTTP_ID',1),('INDVDL_INFO_ID',1),('INFRML_SANCTN',1),('INSTT_CODE_OPERT',1),('INSTT_ID',1),('ISG_ID',1),('ITEM_ID',1),('KNO_ID',1),('KNO_ID2',1),('LEADER_SCHDUL_ID',1),('LOGINLOG_ID',1),('LSI_ID',1),('MAILMSG_ID',1),('MEMO_REPRT',1),('MEMO_TODO_ID',1),('MSI_ID',1),('MTG_ID',1),('MTG_PLACE_ID',1),('NCRD_ID',1),('NEWS_ID',1),('NOTE_ID',1),('NOTE_RECPTN_ID',1),('NOTE_TRNSMIT_ID',1),('NOTICE_ID',291),('NTT_ID',1),('NTWRKSVC_LOGID',1),('NTWRK_ID',1),('ONLINE_MUL_ID',1),('ORGNZT_ID',1),('POLL_IEM_ID',1),('POLL_MGR_ID',1),('POLL_RUT_ID',1),('POPUP_ID',1),('PROC_ID',1),('PROL_ID',1),('PROXYLOG_ID',1),('PROXYSVC_ID',1),('QA_ID',1),('QESITM_',1),('QESRSPNS_ID',1),('QESTNR_QESITM_ID',1),('QESTNR_RPD_ID',1),('QUSTNRQESTN_ID',1),('QUSTNRTMPLA_ID',1),('RECOMEND_SITE_ID',1),('RESTDE_ID',1),('RESVE_ID',1),('ROLE_ID',20),('ROUGHMAP_ID',1),('RSS_ID',1),('RS_ID',1),('RWARD_ID',1),('SCHDUL_ID',1),('SCRAP_ID',1),('SERVER_ID',1),('SEVEQ_ID',1),('SITE_ID',1),('SMS_ID',1),('SRCHWRD_ID',1),('SRCHWRD_MANAGEID',2),('SRCHWRD_MANAGE_I',1),('STSFDG_NO',1),('SVCRESMONTLOG_ID',1),('SVC_ID',1),('SYNCHRNSERVER_ID',1),('SYSLOG_ID',1),('SYS_ID',1),('TEST1',1),('TMPLAT_ID',1),('TROBL_ID',1),('TRSMRCVLOG_ID',1),('TR_MNTRNG_LOG_ID',1),('UNITY_LINK_ID',1),('USE_STPLAT_ID',3),('USRCNFRM_ID',13),('WEBLOG_ID',1),('WIKI_ID',1),('WIKMNTHNG_REPRT',1),('WORD_ID',1);

#
# Structure for table "tb_com_shortcut_menu"
#

DROP TABLE IF EXISTS `tb_com_shortcut_menu`;
CREATE TABLE `tb_com_shortcut_menu` (
  `MENU_ID` decimal(20,0) NOT NULL,
  `EMPLYR_ID` varchar(20) NOT NULL,
  `MENU_NM` varchar(60) NOT NULL,
  `PROGRM_STRE_PATH` varchar(100) NOT NULL,
  PRIMARY KEY (`MENU_ID`,`EMPLYR_ID`),
  UNIQUE KEY `COMTNBKMKMENUMANAGERESULT_PK` (`MENU_ID`,`EMPLYR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_shortcut_menu"
#


#
# Structure for table "tb_com_sitemap"
#

DROP TABLE IF EXISTS `tb_com_sitemap`;
CREATE TABLE `tb_com_sitemap` (
  `MAPNG_CREAT_ID` varchar(30) NOT NULL,
  `CREATR_ID` varchar(20) NOT NULL,
  `MAPNG_FILE_NM` varchar(60) NOT NULL,
  `MAPNG_FILE_PATH` varchar(100) NOT NULL,
  PRIMARY KEY (`MAPNG_CREAT_ID`),
  UNIQUE KEY `COMTNSITEMAP_PK` (`MAPNG_CREAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_sitemap"
#


#
# Structure for table "tb_com_menucreat"
#

DROP TABLE IF EXISTS `tb_com_menucreat`;
CREATE TABLE `tb_com_menucreat` (
  `MENU_NO` decimal(20,0) NOT NULL,
  `AUTHOR_CODE` varchar(30) NOT NULL,
  `MAPNG_CREAT_ID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MENU_NO`,`AUTHOR_CODE`),
  UNIQUE KEY `COMTNMENUCREATDTLS_PK` (`MENU_NO`,`AUTHOR_CODE`),
  KEY `COMTNMENUCREATDTLS_i02` (`MENU_NO`),
  KEY `COMTNMENUCREATDTLS_i03` (`MAPNG_CREAT_ID`),
  KEY `COMTNMENUCREATDTLS_i04` (`AUTHOR_CODE`),
  CONSTRAINT `COMTNMENUCREATDTLS_FK1` FOREIGN KEY (`AUTHOR_CODE`) REFERENCES `tb_com_authinfo` (`AUTHOR_CODE`),
  CONSTRAINT `COMTNMENUCREATDTLS_FK2` FOREIGN KEY (`MENU_NO`) REFERENCES `tb_com_menuinfo` (`MENU_NO`) ON DELETE CASCADE,
  CONSTRAINT `COMTNMENUCREATDTLS_FK3` FOREIGN KEY (`MAPNG_CREAT_ID`) REFERENCES `tb_com_sitemap` (`MAPNG_CREAT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_menucreat"
#

INSERT INTO `tb_com_menucreat` VALUES (1000,'ROLE_USER',NULL),(1010,'ROLE_USER',NULL),(1020,'ROLE_USER',NULL),(1030,'ROLE_USER',NULL),(2000,'ROLE_USER',NULL),(2010,'ROLE_USER',NULL),(2020,'ROLE_USER',NULL);

#
# Structure for table "tb_com_streetaddr"
#

DROP TABLE IF EXISTS `tb_com_streetaddr`;
CREATE TABLE `tb_com_streetaddr` (
  `RDMN_CODE` varchar(12) NOT NULL,
  `SN` decimal(10,0) NOT NULL,
  `CTPRVN_NM` varchar(20) DEFAULT NULL,
  `SIGNGU_NM` varchar(20) DEFAULT NULL,
  `RDMN` varchar(60) DEFAULT NULL,
  `BDNBR_MNNM` varchar(5) DEFAULT NULL,
  `BDNBR_SLNO` varchar(5) DEFAULT NULL,
  `BULD_NM` varchar(60) DEFAULT NULL,
  `DETAIL_BULD_NM` varchar(60) DEFAULT NULL,
  `ZIP` varchar(6) NOT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SN`),
  UNIQUE KEY `COMTRDNMADRZIP_PK` (`RDMN_CODE`,`SN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_streetaddr"
#

INSERT INTO `tb_com_streetaddr` VALUES ('111403100021',1,'서울특별시','중구','청계천로','14','0','한국정보사회진흥원','','100775','2022-07-30 10:41:52','SYSTEM','2022-07-30 10:41:52','SYSTEM');

#
# Structure for table "tb_com_terms"
#

DROP TABLE IF EXISTS `tb_com_terms`;
CREATE TABLE `tb_com_terms` (
  `USE_STPLAT_ID` char(20) NOT NULL,
  `USE_STPLAT_NM` varchar(100) DEFAULT NULL,
  `USE_STPLAT_CN` mediumtext DEFAULT NULL,
  `INFO_PROVD_AGRE_CN` mediumtext DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`USE_STPLAT_ID`),
  UNIQUE KEY `COMTNSTPLATINFO_PK` (`USE_STPLAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_terms"
#

INSERT INTO `tb_com_terms` VALUES ('STPLAT_0000000000001','인터넷이용약관','개인정보의 수집 및 이용목적-개인회원','제1조(목적 등)-개인회원','2022-07-30 10:41:52','USRCNFRM_00000000000','2022-07-30 10:41:52','USRCNFRM_00000000000'),('STPLAT_0000000000002','인터넷이용약관','개인정보의 수집 및 이용목적-기업회원','제1조(목적 등)-기업회원','2022-07-30 10:41:52','USRCNFRM_00000000000','2022-07-30 10:41:52','USRCNFRM_00000000000');

#
# Structure for table "tb_com_user_log"
#

DROP TABLE IF EXISTS `tb_com_user_log`;
CREATE TABLE `tb_com_user_log` (
  `EMPLYR_ID` varchar(20) NOT NULL,
  `CHANGE_DE` char(20) NOT NULL,
  `ORGNZT_ID` char(20) DEFAULT NULL,
  `GROUP_ID` char(20) DEFAULT NULL,
  `EMPL_NO` varchar(20) DEFAULT NULL,
  `SEXDSTN_CODE` char(1) DEFAULT NULL,
  `BRTHDY` char(20) DEFAULT NULL,
  `FXNUM` varchar(20) DEFAULT NULL,
  `HOUSE_ADRES` varchar(100) DEFAULT NULL,
  `HOUSE_END_TELNO` varchar(4) DEFAULT NULL,
  `AREA_NO` varchar(4) DEFAULT NULL,
  `DETAIL_ADRES` varchar(100) DEFAULT NULL,
  `ZIP` varchar(6) DEFAULT NULL,
  `OFFM_TELNO` varchar(20) DEFAULT NULL,
  `MBTLNUM` varchar(20) DEFAULT NULL,
  `EMAIL_ADRES` varchar(50) DEFAULT NULL,
  `HOUSE_MIDDLE_TELNO` varchar(4) DEFAULT NULL,
  `PSTINST_CODE` char(8) DEFAULT NULL,
  `EMPLYR_STTUS_CODE` char(1) DEFAULT NULL,
  `ESNTL_ID` char(20) DEFAULT NULL,
  PRIMARY KEY (`EMPLYR_ID`,`CHANGE_DE`),
  UNIQUE KEY `COMTHEMPLYRINFOCHANGEDTLS_PK` (`EMPLYR_ID`,`CHANGE_DE`),
  KEY `COMTHEMPLYRINFOCHANGEDTLS_i01` (`EMPLYR_ID`),
  CONSTRAINT `COMTHEMPLYRINFOCHANGEDTLS_FK1` FOREIGN KEY (`EMPLYR_ID`) REFERENCES `tb_account_admin_mgt` (`EMPLYR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_user_log"
#


#
# Structure for table "tb_com_zipcode"
#

DROP TABLE IF EXISTS `tb_com_zipcode`;
CREATE TABLE `tb_com_zipcode` (
  `ZIP` varchar(6) NOT NULL,
  `SN` decimal(10,0) NOT NULL,
  `CTPRVN_NM` varchar(20) DEFAULT NULL,
  `SIGNGU_NM` varchar(20) DEFAULT NULL,
  `EMD_NM` varchar(60) DEFAULT NULL,
  `LI_BULD_NM` varchar(60) DEFAULT NULL,
  `LNBR_DONG_HO` varchar(20) DEFAULT NULL,
  `FRST_REGIST_PNTTM` datetime DEFAULT NULL,
  `FRST_REGISTER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDT_PNTTM` datetime DEFAULT NULL,
  `LAST_UPDUSR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ZIP`,`SN`),
  UNIQUE KEY `COMTCZIP_PK` (`ZIP`,`SN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_com_zipcode"
#

INSERT INTO `tb_com_zipcode` VALUES ('100775',7381,'서울','중구','무교동','한국정보화진흥원','','2022-07-30 10:41:51','SYSTEM','2022-07-30 10:41:51','SYSTEM');

#
# Structure for table "tb_novel_genre"
#

DROP TABLE IF EXISTS `tb_novel_genre`;
CREATE TABLE `tb_novel_genre` (
  `genre_code` varchar(30) NOT NULL DEFAULT '' COMMENT '장르ID',
  `genre_nm` varchar(100) NOT NULL DEFAULT '' COMMENT '장르 이름',
  `create_dt` datetime DEFAULT NULL COMMENT '생성일',
  PRIMARY KEY (`genre_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='소설 장르 테이블';

#
# Data for table "tb_novel_genre"
#

INSERT INTO `tb_novel_genre` VALUES ('cd_000002','판타지',NULL),('cd_000003','무협',NULL),('cd_000004','로맨스',NULL),('cd_000005','로맨스판타지',NULL),('cd_000006','현대',NULL),('cd_000007','현대판타지',NULL);

#
# View "tb_account_view"
#

DROP VIEW IF EXISTS `tb_account_view`;
CREATE
  ALGORITHM = UNDEFINED
  VIEW `tb_account_view`
  AS
SELECT
  `tb_account_mber_mgt`.`ESNTL_ID` AS 'esntl_id',
  `tb_account_mber_mgt`.`MBER_ID` AS 'user_id',
  `tb_account_mber_mgt`.`PASSWORD` AS 'password',
  `tb_account_mber_mgt`.`MBER_NM` AS 'user_nm',
  `tb_com_emply`.`AUTHOR_CODE` AS 'author_code',
  `tb_account_mber_mgt`.`ZIP` AS 'user_zip',
  `tb_account_mber_mgt`.`ADRES` AS 'user_adres',
  `tb_account_mber_mgt`.`MBER_EMAIL_ADRES` AS 'user_email',
  ' ' AS 'group_id',
  'GNR' AS 'user_se',
  ' ' AS 'orgnzt_id'
FROM
  (`tb_account_mber_mgt`
    LEFT JOIN `tb_com_emply` ON (`tb_com_emply`.`SCRTY_DTRMN_TRGET_ID` = `tb_account_mber_mgt`.`ESNTL_ID`))
UNION ALL
SELECT
  `tb_account_admin_mgt`.`ESNTL_ID` AS 'esntl_id',
  `tb_account_admin_mgt`.`EMPLYR_ID` AS 'emplyr_id',
  `tb_account_admin_mgt`.`PASSWORD` AS 'password',
  `tb_account_admin_mgt`.`USER_NM` AS 'user_nm',
  `tb_com_emply`.`AUTHOR_CODE` AS 'author_code',
  `tb_account_admin_mgt`.`ZIP` AS 'zip',
  `tb_account_admin_mgt`.`HOUSE_ADRES` AS 'house_adres',
  `tb_account_admin_mgt`.`EMAIL_ADRES` AS 'email_adres',
  `tb_account_admin_mgt`.`GROUP_ID` AS 'group_id',
  'USR' AS 'user_se',
  `tb_account_admin_mgt`.`ORGNZT_ID` AS 'orgnzt_id'
FROM
  (`tb_account_admin_mgt`
    LEFT JOIN `tb_com_emply` ON (`tb_com_emply`.`SCRTY_DTRMN_TRGET_ID` = `tb_account_admin_mgt`.`ESNTL_ID`))
UNION ALL
SELECT
  `tb_account_enterprise_mgt`.`ESNTL_ID` AS 'esntl_id',
  `tb_account_enterprise_mgt`.`ENTRPRS_MBER_ID` AS 'entrprs_mber_id',
  `tb_account_enterprise_mgt`.`ENTRPRS_MBER_PASSWORD` AS 'entrprs_mber_password',
  `tb_account_enterprise_mgt`.`CMPNY_NM` AS 'cmpny_nm',
  `tb_com_emply`.`AUTHOR_CODE` AS 'author_code',
  `tb_account_enterprise_mgt`.`ZIP` AS 'zip',
  `tb_account_enterprise_mgt`.`ADRES` AS 'adres',
  `tb_account_enterprise_mgt`.`APPLCNT_EMAIL_ADRES` AS 'applcnt_email_adres',
  ' ' AS 'name_exp_28',
  'ENT' AS 'user_se',
  ' ' AS 'orgnzt_id'
FROM
  (`tb_account_enterprise_mgt`
    LEFT JOIN `tb_com_emply` ON (`tb_com_emply`.`SCRTY_DTRMN_TRGET_ID` = `tb_account_enterprise_mgt`.`ESNTL_ID`))
ORDER BY `esntl_id`;
