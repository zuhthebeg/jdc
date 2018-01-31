--------------------------------------------------------
--  파일이 생성됨 - 수요일-1월-31-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ANSWER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JDC"."ANSWER_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ARTICLE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JDC"."ARTICLE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JDC"."CATEGORY_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JDC"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 65 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ARTICLE
--------------------------------------------------------

  CREATE TABLE "JDC"."ARTICLE" 
   (	"ARTICLE_IDX" NUMBER, 
	"CATEGORY_IDX" NUMBER, 
	"CODETYPE_IDX" NUMBER, 
	"CONTENT" CLOB, 
	"IS_PUBLIC" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"TITLE" VARCHAR2(2000 BYTE), 
	"USER_IDX" NUMBER, 
	"CODE" CLOB, 
	"ERRORCODE" CLOB, 
	"CNT" NUMBER DEFAULT 0, 
	"ERROR_TYPE" VARCHAR2(100 BYTE), 
	"SUPPORT_TYPE" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
 LOB ("CODE") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
 LOB ("ERRORCODE") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table ARTICLE_ANSWER
--------------------------------------------------------

  CREATE TABLE "JDC"."ARTICLE_ANSWER" 
   (	"ANSWER_IDX" NUMBER, 
	"ARTICLE_IDX" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" CLOB, 
	"SATISFY" NUMBER DEFAULT 0, 
	"IS_CHOICE" VARCHAR2(20 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"DEBUG_CODE" CLOB, 
	"USER_IDX" VARCHAR2(20 BYTE), 
	"CODE_TYPE" VARCHAR2(20 BYTE), 
	"WRITER_COMMENT" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 131072 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
 LOB ("DEBUG_CODE") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ;
 

   COMMENT ON COLUMN "JDC"."ARTICLE_ANSWER"."WRITER_COMMENT" IS '작성자 코멘트';
--------------------------------------------------------
--  DDL for Table ARTICLE_ATTACHMENT
--------------------------------------------------------

  CREATE TABLE "JDC"."ARTICLE_ATTACHMENT" 
   (	"ATTACHMENT_IDX" NUMBER, 
	"ARTICLE_IDX" NUMBER, 
	"FILENAME" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ARTICLE_CODETYPE
--------------------------------------------------------

  CREATE TABLE "JDC"."ARTICLE_CODETYPE" 
   (	"CODETYPE_IDX" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"CODE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ARTICLE_REPLY
--------------------------------------------------------

  CREATE TABLE "JDC"."ARTICLE_REPLY" 
   (	"REPLY_IDX" NUMBER, 
	"CONTENTS" CLOB, 
	"REGDATE" DATE DEFAULT sysdate, 
	"ARTICLE_IDX" NUMBER, 
	"USER_IDX" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENTS") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "JDC"."CATEGORY" 
   (	"CATEGORY_IDX" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"PARENT_IDX" NUMBER, 
	"REGDATE" DATE DEFAULT sysdate, 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"THUMBNAIL" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "JDC"."MEMBER" 
   (	"USER_IDX" NUMBER, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PASSWD" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECOMMEND
--------------------------------------------------------

  CREATE TABLE "JDC"."RECOMMEND" 
   (	"TARGET_IDX" NUMBER, 
	"TARGET" VARCHAR2(20 BYTE), 
	"REGIP" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View ANSWER_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "JDC"."ANSWER_VIEW" ("ANSWER_IDX", "ARTICLE_IDX", "TITLE", "CONTENT", "SATISFY", "IS_CHOICE", "REGDATE", "DEBUG_CODE", "CODE_TYPE", "USER_IDX", "USER_NAME", "RECOMMEND", "WRITER_COMMENT") AS 
  SELECT 
    aa."ANSWER_IDX",aa."ARTICLE_IDX",aa."TITLE",aa."CONTENT",aa."SATISFY",aa."IS_CHOICE",aa."REGDATE",aa."DEBUG_CODE", aa.code_type, aa."USER_IDX", nvl(m.name, 'anonymous') user_name,
(select count(*) from recommend where target like 'answer_idx' and target_idx = aa.answer_idx) recommend, aa.writer_comment
FROM
article_answer aa, member m
where
m.user_idx(+) = aa.user_idx;
--------------------------------------------------------
--  DDL for View ARTICLE_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "JDC"."ARTICLE_VIEW" ("ARTICLE_IDX", "CATEGORY_IDX", "CODETYPE_IDX", "CONTENT", "IS_PUBLIC", "REGDATE", "TITLE", "USER_IDX", "CODE", "ERRORCODE", "CNT", "SUPPORT_TYPE", "ERROR_TYPE", "CATEGORY_NAME", "REPLY_CNT", "ANSWER_CNT", "CODE_NAME", "USER_NAME", "RECOMMEND") AS 
  select a."ARTICLE_IDX",a."CATEGORY_IDX",a."CODETYPE_IDX",a."CONTENT",a."IS_PUBLIC",a."REGDATE",a."TITLE",a."USER_IDX", 
a.code, a.errorcode, a.cnt, a.support_type, a.error_type,
c.name category_name ,
(select count(reply_idx) from article_reply where article_idx = a.article_idx) reply_cnt,
(select count(answer_idx) from article_answer where article_idx = a.article_idx) answer_cnt,
(select code from article_codetype where codetype_idx = a.codetype_idx) code_name,
(select name from member where user_idx = a.user_idx) user_name,
(select count(*) from recommend where target like 'article_idx' and target_idx = a.article_idx) recommend

from article a, category c where a.category_idx = c.category_idx
order by a.regdate desc;
REM INSERTING into JDC.ARTICLE
SET DEFINE OFF;
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (89,6,12,'blackbox',to_date('13/04/06','RR/MM/DD'),'게시글 삭제 기능 구현',22,15,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (92,21,12,'blackbox',to_date('13/04/06','RR/MM/DD'),'sqlMapConfig.xml의 내용이 이게 맞습니까?',22,10,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (93,21,5,'blackbox',to_date('13/04/06','RR/MM/DD'),'아이바티스 커넥터?',22,7,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (94,21,12,'blackbox',to_date('13/04/06','RR/MM/DD'),'sqlmap의 예시 내용',22,30,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (96,4,12,'blackbox',to_date('13/04/06','RR/MM/DD'),'리스트? 페이징?',22,41,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (101,21,12,'blackbox',to_date('13/04/11','RR/MM/DD'),'A ResourcePool could not acquire a resource from its primary factory or source.',22,12,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (102,4,12,'blackbox',to_date('13/04/12','RR/MM/DD'),'부트스트랩에서 버튼의 색상을 지정할땐?',22,7,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (105,23,1,'blackbox',to_date('13/04/13','RR/MM/DD'),'부트스트랩(bootstrap) h태그 한글이 깨져요',22,7,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (104,23,3,'blackbox',to_date('13/04/12','RR/MM/DD'),'bootstrap 황금색 네비바 css',22,3,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (122,6,12,'blackbox',to_date('13/04/16','RR/MM/DD'),'JSTL 의 pageContext 속성 출력',22,10,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (83,6,5,'blackbox',to_date('13/04/06','RR/MM/DD'),'데이터 베이스에 접속하고 싶습니다.',22,11,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (84,6,5,'blackbox',to_date('13/04/06','RR/MM/DD'),'jsp에서의 정규식을 이용한 validation??',22,8,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (121,18,1,'blackbox',to_date('13/04/14','RR/MM/DD'),'oracle 12528',22,4,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (141,9,12,'blackbox',to_date('13/04/22','RR/MM/DD'),'스프링에서 이메일을 보내려면 어떻게 설정하나요?',22,8,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (142,37,5,'blackbox',to_date('13/04/22','RR/MM/DD'),'이메일 빈작성?',22,10,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (143,15,10,'blackbox',to_date('13/04/22','RR/MM/DD'),'이메일 템플릿 빈',22,9,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (161,28,1,'blackbox',to_date('13/04/24','RR/MM/DD'),'Somebody help me!',44,1,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (90,6,12,'blackbox',to_date('13/04/06','RR/MM/DD'),'게시글을 화면에 표기하고싶습니다.',22,5,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (91,6,5,'blackbox',to_date('13/04/06','RR/MM/DD'),'model2로 list action을 구현해볼건데요',22,44,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (85,23,3,'blackbox',to_date('13/04/06','RR/MM/DD'),'간단한 테이블 css',22,3,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (86,6,5,'blackbox',to_date('13/04/06','RR/MM/DD'),'게시글 조회기능을 구현하고싶습니다.',22,10,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (88,15,10,'blackbox',to_date('13/04/06','RR/MM/DD'),'셀렉트 쿼리 알려주세요',22,27,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (78,5,6,'whitebox',to_date('13/04/04','RR/MM/DD'),'게시글 입력 폼에 대한 유효성 검증 코드를 삽입하고 싶습니다.',22,17,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (79,6,5,'blackbox',to_date('13/04/04','RR/MM/DD'),'스크립트릿의 사용법을 알려주세요.',22,53,'logic','online');
Insert into JDC.ARTICLE (ARTICLE_IDX,CATEGORY_IDX,CODETYPE_IDX,IS_PUBLIC,REGDATE,TITLE,USER_IDX,CNT,ERROR_TYPE,SUPPORT_TYPE) values (95,6,5,'blackbox',to_date('13/04/06','RR/MM/DD'),'페이징기능을 구현하고싶습니다.',22,61,'logic','online');
REM INSERTING into JDC.ARTICLE_ANSWER
SET DEFINE OFF;
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (26,79,'[re] : 스크립트릿의 사용법을 알려주세요.',0,null,to_date('13/04/04','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (35,84,'[re] : jsp에서의 정규식을 이용한 validation??',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (36,86,'[re] : 게시글 조회기능을 구현하고싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (37,86,'[re] : 게시글 조회기능을 구현하고싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (39,88,'[re] : 셀렉트 쿼리 알려주세요',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (42,91,'[re] : model2로 list action을 구현해볼건데요',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (21,78,'[re] : 게시글 입력 폼에 대한 유효성 검증 코드를 삽입하고 싶습니다.',0,null,to_date('13/04/04','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (43,94,'[re] : sqlmap의 예시 내용',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (20,78,'[re] : 게시글 입력 폼에 대한 유효성 검증 코드를 삽입하고 싶습니다.',0,'1',to_date('13/04/04','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (22,78,'[re] : 게시글 입력 폼에 대한 유효성 검증 코드를 삽입하고 싶습니다.',0,null,to_date('13/04/04','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (45,94,'[re] : sqlmap의 예시 내용',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (30,83,'[re] : 데이터 베이스에 접속하고 싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (23,79,'[re] : 스크립트릿의 사용법을 알려주세요.',0,null,to_date('13/04/04','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (44,94,'[re] : sqlmap의 예시 내용',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (31,83,'[re] : 데이터 베이스에 접속하고 싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (32,83,'[re] : 데이터 베이스에 접속하고 싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (33,83,'[re] : 데이터 베이스에 접속하고 싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (34,84,'[re] : jsp에서의 정규식을 이용한 validation??',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (46,91,'[re] : model2로 list action을 구현해볼건데요',8,'1',to_date('13/04/06','RR/MM/DD'),'22',null,'감사여');
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (47,91,'[re] : model2로 list action을 구현해볼건데요',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (48,91,'[re] : model2로 list action을 구현해볼건데요',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (49,95,'[re] : 페이징기능을 구현하고싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (24,79,'[re] : 스크립트릿의 사용법을 알려주세요.',0,null,to_date('13/04/04','RR/MM/DD'),null,null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (38,89,'[re] : 게시글 삭제 기능 구현',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (40,91,'[re] : model2로 list action을 구현해볼건데요',8,'1',to_date('13/04/06','RR/MM/DD'),'22',null,'감사여');
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (41,91,'[re] : model2로 list action을 구현해볼건데요',8,'1',to_date('13/04/06','RR/MM/DD'),'22',null,'감사여');
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (25,79,'[re] : 스크립트릿의 사용법을 알려주세요.',0,null,to_date('13/04/04','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (50,95,'[re] : 페이징기능을 구현하고싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (101,141,'[re] : 스프링에서 이메일을 보내려면 어떻게 설정하나요?',0,null,to_date('13/04/22','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (102,141,'[re] : 스프링에서 이메일을 보내려면 어떻게 설정하나요?',0,null,to_date('13/04/22','RR/MM/DD'),null,'java',null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (103,142,'[re] : 이메일 빈작성?',0,null,to_date('13/04/22','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (104,142,'[re] : 이메일 빈작성?',0,null,to_date('13/04/22','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (105,142,'[re] : 이메일 빈작성?',0,null,to_date('13/04/22','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (106,142,'[re] : 이메일 빈작성?',0,null,to_date('13/04/22','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (53,95,'[re] : 페이징기능을 구현하고싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (51,96,'[re] : 리스트? 페이징?',8,'1',to_date('13/04/06','RR/MM/DD'),'22',null,'감사여');
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (52,96,'[re] : 리스트? 페이징?',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (55,95,'[re] : 페이징기능을 구현하고싶습니다.',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (56,94,'[re] : sqlmap의 예시 내용',0,null,to_date('13/04/06','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (57,97,'[re] : test',0,null,to_date('13/04/07','RR/MM/DD'),null,null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (58,79,'[re] : 스크립트릿의 사용법을 알려주세요.',0,null,to_date('13/04/07','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (59,95,'[re] : 페이징기능을 구현하고싶습니다.',0,null,to_date('13/04/07','RR/MM/DD'),null,null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (81,121,'[re] : oracle 12528',0,null,to_date('13/04/14','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (61,101,'[re] : 자문 자답...',8,'1',to_date('13/04/11','RR/MM/DD'),'22',null,'감사여');
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (62,105,'[re] : 부트스트랩(bootstrap) h태그 한글이 깨져요',0,null,to_date('13/04/13','RR/MM/DD'),'22',null,null);
Insert into JDC.ARTICLE_ANSWER (ANSWER_IDX,ARTICLE_IDX,TITLE,SATISFY,IS_CHOICE,REGDATE,USER_IDX,CODE_TYPE,WRITER_COMMENT) values (107,142,'[re] : 이메일 빈작성?',0,null,to_date('13/04/22','RR/MM/DD'),'22',null,null);
REM INSERTING into JDC.ARTICLE_ATTACHMENT
SET DEFINE OFF;
REM INSERTING into JDC.ARTICLE_CODETYPE
SET DEFINE OFF;
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (1,'cpp c',to_date('13/03/25','RR/MM/DD'),'cpp');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (2,'c# c-sharp csharp',to_date('13/03/25','RR/MM/DD'),'c#');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (3,'css',to_date('13/03/25','RR/MM/DD'),'css');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (4,'delphi pascal ',to_date('13/03/25','RR/MM/DD'),'delphi');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (5,'java',to_date('13/03/25','RR/MM/DD'),'java');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (6,'js jscript javascript',to_date('13/03/25','RR/MM/DD'),'js');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (7,'php',to_date('13/03/25','RR/MM/DD'),'php');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (8,'py python',to_date('13/03/25','RR/MM/DD'),'py');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (9,'ruby rails ror rb',to_date('13/03/25','RR/MM/DD'),'ruby');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (10,'sql',to_date('13/03/25','RR/MM/DD'),'sql');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (11,'vb vbnet',to_date('13/03/25','RR/MM/DD'),'vb');
Insert into JDC.ARTICLE_CODETYPE (CODETYPE_IDX,NAME,REGDATE,CODE) values (12,'xml xhtml xslt html',to_date('13/03/25','RR/MM/DD'),'xml');
REM INSERTING into JDC.ARTICLE_REPLY
SET DEFINE OFF;
REM INSERTING into JDC.CATEGORY
SET DEFINE OFF;
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (1,'웹',0,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (2,'모바일',0,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (3,'데이터베이스',0,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (4,'html',1,to_date('13/03/25','RR/MM/DD'),'Hyper Text Markup Language','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT-raRKgHjxE-I5SaYiyBKj_Aioqa6pDkFn1JFxWrJVTlZE4twKUQ');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (5,'javascript',1,to_date('13/03/25','RR/MM/DD'),'Original Javascript','http://cdn3.iconfinder.com/data/icons/UltimateGnome/128x128/mimetypes/application-javascript.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (6,'jsp',1,to_date('13/03/25','RR/MM/DD'),'Java for web','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSGpAKr5CPTjaOXV20ons0lANPNtuKY4k62C0Ng-9-ucmWP1W1Xg');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (7,'asp',1,to_date('13/03/25','RR/MM/DD'),'Active Server Page','http://cdn4.iconfinder.com/data/icons/VistaICO-File-Icons/128/Script/ASP.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (8,'php',1,to_date('13/03/25','RR/MM/DD'),'Persnal Home Page','http://cdn3.iconfinder.com/data/icons/humano2/128x128/mimetypes/application-x-php.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (9,'spring',1,to_date('13/03/25','RR/MM/DD'),'봄이왔어요','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHKaabiXAHafKRlRVS82SOTC1Wg_SSOUayu0Df6YC99PAossoR');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (10,'전자정부',1,to_date('13/03/25','RR/MM/DD'),'eGovframeword , lastest release Ver 2.5','http://cfile9.uf.tistory.com/image/186358474EE421BD32A1E3');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (11,'Android',2,to_date('13/03/25','RR/MM/DD'),'안돼로이드','http://cdn4.iconfinder.com/data/icons/REALVISTA/mobile/png/128/android_platform.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (12,'IOS',2,to_date('13/03/25','RR/MM/DD'),'Object C','http://cdn3.iconfinder.com/data/icons/obsidianus/Macintosh%20HD.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (13,'Window Mobile',2,to_date('13/03/25','RR/MM/DD'),'window mobile','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXtJi9bsLPw5U2jhl6OD3UmoYcVh0M4bLDUz1Bt5HJSgMZSpYK');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (14,'Hybrid Web',2,to_date('13/03/25','RR/MM/DD'),'Hi','http://cfile26.uf.tistory.com/image/161519474DA7F97C23FDB7');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (15,'SQL',3,to_date('13/03/25','RR/MM/DD'),'Structured Query Language','http://cdn3.iconfinder.com/data/icons/UltimateGnome/128x128/mimetypes/application-x-sqlite2.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (16,'Query Tuning',3,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (17,'PL/SQL',3,to_date('13/03/25','RR/MM/DD'),'Only Oracle','http://images04.olx.in/ui/19/90/29/1358393477_473828129_1-Best-Oracle-PLSQL-Query-Tuning-XML-training-in-Chennai-Adyar-Adyar.jpg');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (18,'Oracle',3,to_date('13/03/25','RR/MM/DD'),'Ooops..','http://images.forbes.com/media/lists/companies/oracle_200x200.jpg');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (19,'MYsql',3,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (20,'MSsql',3,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (21,'I-batis',3,to_date('13/03/25','RR/MM/DD'),'Before Mybatis','http://dev.wavemaker.com/forums/files/ibatis.jpg');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (22,'Hibernate',3,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (39,'Bootstrap',1,to_date('13/04/13','RR/MM/DD'),'디자인 공수를 획기적으로 줄일수 있고, 반응형 웹구축과 더불어 거의 완벽한 크로스브라우징을 지원하는 트위터기반의 css,javascript 라이브러리!','http://twitter.github.io/bootstrap/assets/img/bs-docs-responsive-illustrations.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (23,'css',1,to_date('13/03/25','RR/MM/DD'),'웹 환경에서 UI를 위한 Cascading Style Sheet','http://cdn4.iconfinder.com/data/icons/dellios_system_icons/png_128/css.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (24,'HTML5',1,to_date('13/03/25','RR/MM/DD'),'Html Ver.5','http://cdn5.iconfinder.com/data/icons/HTML5/128/HTML_Logo.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (25,'도와주세요',0,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (26,'알고리즘구현',25,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (27,'기능구현',25,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (28,'1인프로젝트',25,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (29,'소규모프로젝트',25,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (30,'프리랜서',25,to_date('13/03/25','RR/MM/DD'),null,null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (31,'xml',1,to_date('13/03/27','RR/MM/DD'),'웹 개발환경에서의 xml','http://cdn4.iconfinder.com/data/icons/dellios_system_icons/png_128/xml-grey.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (32,'닷넷',0,to_date('13/03/27','RR/MM/DD'),'비주얼 스튜디오 개발환경',null);
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (33,'C',32,to_date('13/03/27','RR/MM/DD'),'After B','http://cdn3.iconfinder.com/data/icons/sphericalcons/128/copyright.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (34,'C++',32,to_date('13/03/27','RR/MM/DD'),'After C','http://cdn3.iconfinder.com/data/icons/sphericalcons/128/file_c%2B%2B.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (35,'C#',32,to_date('13/03/27','RR/MM/DD'),'C++++','http://cdn3.iconfinder.com/data/icons/sphericalcons/128/file_c.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (36,'VisualBasic',32,to_date('13/03/27','RR/MM/DD'),'VB','http://cdn3.iconfinder.com/data/icons/sphericalcons/128/file_vb.png');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (37,'Java',1,to_date('13/03/27','RR/MM/DD'),'Java for Web','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRo-UrnTGfb2QzmcVikaiSpO_ss45ZgzZLAWL3gFvxA3S-G0lni');
Insert into JDC.CATEGORY (CATEGORY_IDX,NAME,PARENT_IDX,REGDATE,DESCRIPTION,THUMBNAIL) values (38,'Java',2,to_date('13/03/27','RR/MM/DD'),'Java for Android','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRo-UrnTGfb2QzmcVikaiSpO_ss45ZgzZLAWL3gFvxA3S-G0lni');
REM INSERTING into JDC.MEMBER
SET DEFINE OFF;
Insert into JDC.MEMBER (USER_IDX,EMAIL,PASSWD,NAME,REGDATE) values (44,'jiseopwon@gmail.com','1234','Jiseop Won',to_date('13/04/14','RR/MM/DD'));
Insert into JDC.MEMBER (USER_IDX,EMAIL,PASSWD,NAME,REGDATE) values (41,'kprocom@naver.com','eodud#!$*','항상초보',to_date('13/04/09','RR/MM/DD'));
Insert into JDC.MEMBER (USER_IDX,EMAIL,PASSWD,NAME,REGDATE) values (43,'lejewk@naver.com','wodnr123','cafe24',to_date('13/04/12','RR/MM/DD'));
Insert into JDC.MEMBER (USER_IDX,EMAIL,PASSWD,NAME,REGDATE) values (64,'hoobastanktr@gamil.com','1234','noname',to_date('13/04/23','RR/MM/DD'));
Insert into JDC.MEMBER (USER_IDX,EMAIL,PASSWD,NAME,REGDATE) values (22,'zuhthebeg@naver.com','cocy9306','cocy',to_date('13/04/03','RR/MM/DD'));
Insert into JDC.MEMBER (USER_IDX,EMAIL,PASSWD,NAME,REGDATE) values (24,'kjh9101@gmail.com','156256','kang',to_date('13/04/04','RR/MM/DD'));
REM INSERTING into JDC.RECOMMEND
SET DEFINE OFF;
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (102,'article_idx','0:0:0:0:0:0:0:1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (94,'article_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (44,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (91,'article_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (40,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (41,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (51,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (52,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (96,'article_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (47,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (43,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (45,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (46,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (92,'article_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (36,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (37,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (86,'article_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (51,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (52,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (84,'article_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (34,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (35,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (89,'article_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (38,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (41,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (49,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (53,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (59,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (95,'article_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (96,'article_idx','14.41.4.198');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (96,'article_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (101,'article_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (61,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (20,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (23,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (24,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (25,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (26,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (49,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (53,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (50,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (55,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (42,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (48,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (95,'article_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (56,'answer_idx','127.0.0.1');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (48,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (91,'article_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (40,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (57,'answer_idx','210.115.58.216');
Insert into JDC.RECOMMEND (TARGET_IDX,TARGET,REGIP) values (50,'answer_idx','210.115.58.216');
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JDC"."MEMBER_PK" ON "JDC"."MEMBER" ("USER_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ARTICLE_ANSWER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JDC"."ARTICLE_ANSWER_PK" ON "JDC"."ARTICLE_ANSWER" ("ANSWER_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOARD_ARTICLE_ATTACHMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JDC"."BOARD_ARTICLE_ATTACHMENT_PK" ON "JDC"."ARTICLE_ATTACHMENT" ("ATTACHMENT_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOARD_ARTICLE_REPLY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JDC"."BOARD_ARTICLE_REPLY_PK" ON "JDC"."ARTICLE_REPLY" ("REPLY_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JDC"."CATEGORY_PK" ON "JDC"."CATEGORY" ("CATEGORY_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ARTICLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JDC"."ARTICLE_PK" ON "JDC"."ARTICLE" ("ARTICLE_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CODETYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JDC"."CODETYPE_PK" ON "JDC"."ARTICLE_CODETYPE" ("CODETYPE_IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "JDC"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("USER_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "JDC"."MEMBER" MODIFY ("USER_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."MEMBER" MODIFY ("PASSWD" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."MEMBER" MODIFY ("REGDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ARTICLE
--------------------------------------------------------

  ALTER TABLE "JDC"."ARTICLE" ADD CONSTRAINT "ARTICLE_PK" PRIMARY KEY ("ARTICLE_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "JDC"."ARTICLE" MODIFY ("ARTICLE_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE" MODIFY ("CATEGORY_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE" MODIFY ("IS_PUBLIC" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE" MODIFY ("REGDATE" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE" MODIFY ("USER_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE" MODIFY ("CNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ARTICLE_ATTACHMENT
--------------------------------------------------------

  ALTER TABLE "JDC"."ARTICLE_ATTACHMENT" ADD CONSTRAINT "BOARD_ARTICLE_ATTACHMENT_PK" PRIMARY KEY ("ATTACHMENT_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "JDC"."ARTICLE_ATTACHMENT" MODIFY ("ATTACHMENT_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ATTACHMENT" MODIFY ("ARTICLE_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ATTACHMENT" MODIFY ("FILENAME" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ATTACHMENT" MODIFY ("REGDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECOMMEND
--------------------------------------------------------

  ALTER TABLE "JDC"."RECOMMEND" MODIFY ("TARGET_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."RECOMMEND" MODIFY ("TARGET" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."RECOMMEND" MODIFY ("REGIP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ARTICLE_ANSWER
--------------------------------------------------------

  ALTER TABLE "JDC"."ARTICLE_ANSWER" ADD CONSTRAINT "ARTICLE_ANSWER_PK" PRIMARY KEY ("ANSWER_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "JDC"."ARTICLE_ANSWER" MODIFY ("ANSWER_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ANSWER" MODIFY ("ARTICLE_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ANSWER" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ANSWER" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ANSWER" MODIFY ("SATISFY" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_ANSWER" MODIFY ("REGDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ARTICLE_REPLY
--------------------------------------------------------

  ALTER TABLE "JDC"."ARTICLE_REPLY" ADD CONSTRAINT "BOARD_ARTICLE_REPLY_PK" PRIMARY KEY ("REPLY_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "JDC"."ARTICLE_REPLY" MODIFY ("REPLY_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_REPLY" MODIFY ("CONTENTS" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_REPLY" MODIFY ("REGDATE" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_REPLY" MODIFY ("ARTICLE_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_REPLY" MODIFY ("USER_IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JDC"."CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("CATEGORY_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "JDC"."CATEGORY" MODIFY ("CATEGORY_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."CATEGORY" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."CATEGORY" MODIFY ("REGDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ARTICLE_CODETYPE
--------------------------------------------------------

  ALTER TABLE "JDC"."ARTICLE_CODETYPE" ADD CONSTRAINT "CODETYPE_PK" PRIMARY KEY ("CODETYPE_IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "JDC"."ARTICLE_CODETYPE" MODIFY ("CODETYPE_IDX" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_CODETYPE" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "JDC"."ARTICLE_CODETYPE" MODIFY ("REGDATE" NOT NULL ENABLE);
