show user;

select *
from tabs;

------------ 박민호 FAQ 테이블 작업 시작 ---------------
create table tbl_faq
(seq_tbl_faq number -- 시퀀스
,faq_category number(10) default 3 not null -- 카테고리 1. 회원관련 2. 기능관련 3. 기타사항
,faq_title varchar2(100) not null -- FAQ 제목
,faq_content clob not null -- FAQ 의 자주묻는질문 내용
,faq_answer clob not null -- FAQ 의 질문의 답변 내용
,faq_status number(1) default 1 not null -- FAQ 0: 삭제 1: 활성화
,constraint PK_tbl_faq_seq_tbl_faq primary key(seq_tbl_faq)
);

drop table tbl_faq;

create sequence seq_tbl_faq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into tbl_faq(seq_tbl_faq, faq_category, faq_title, faq_content, faq_answer, faq_status)
values(seq_tbl_faq.nextval, 1, '회원가입 방법', '회원가입은 어떻게 하나요?', '회원가입 버튼을 누른 후 양식에 맞춰 정보를 입력하신 후 입력 버튼을 누르시면 됩니다.', default);

select *
from tbl_faq;

comment on table tbl_faq
is 'FAQ 테이블';
comment on column tbl_faq.faq_category
is '카테고리 1. 회원관련 2. 기능관련 3. 기타사항';
comment on column tbl_faq.faq_title
is 'FAQ 제목';
comment on column tbl_faq.faq_content
is 'FAQ 의 자주묻는질문 내용';
comment on column tbl_faq.faq_answer
is 'FAQ 의 질문의 답변 내용';
comment on column tbl_faq.faq_status
is 'FAQ 0: 삭제 1: 활성화';

select *
from user_tab_comments;

select column_name, comments
from user_col_comments
where table_name='TBL_FAQ';
------------ 박민호 FAQ 테이블 작업 끝 ---------------



------------ 박민호 관리자이미지 테이블 작업 시작 ---------------
create table tbl_aimage
(aimg_category number(1) not null -- 사용게시판 1.문의 2.신고 3.공지사항 4.FAQ
,aimg_seq number not null -- 사용게시판 게시물 번호
,aimg_filename varchar2(500) not null -- 업로드된 파일 이름
,aimg_orgfilename varchar2(500) not null -- 업로드된 파일의 진짜 이름
,aimg_filesize number not null -- 업로드된 파일의 크기
,aimg_status number(1) default 1 not null -- 0: 삭제, 1:활성화
,aimg_thumb varchar(500)  -- 썸네일 이미지 이름
constraint UQ_tbl_aimage_aimg_category_seq unique key (aimg_category, aimg_seq)
);



------------ 박민호 관리자이미지 테이블 작업 끝 ---------------

------------ 박민호 회원 insert 작업 시작 ---------------

select *
from tbl_user;

select *
from tbl_login;

insert into tbl_login(login_id, login_pwd, login_name)
values('moonji', 'qwer1234', '문재인');

insert into tbl_user(fk_login_id, user_email, user_birth, user_gender, user_status, user_ing, user_ed, user_boardcnt, user_report)
values('moonji', 'moonji@naver.com', '1953-01-24', '1', '1', '0', '0', '0', '0');

insert into tbl_login(login_id, login_pwd, login_name)
values('chooma', 'qwer1234', '추미애');

insert into tbl_user(fk_login_id, user_email, user_birth, user_gender, user_status, user_ing, user_ed, user_boardcnt, user_report)
values('chooma', 'chooma@gmail.com', '1958-10-01', '2', '1', '0', '0', '0', '0');

insert into tbl_login(login_id, login_pwd, login_name)
values('woows', 'qwer1234', '우원식');

insert into tbl_user(fk_login_id, user_email, user_birth, user_gender, user_status, user_ing, user_ed, user_boardcnt, user_report)
values('woows', 'woows@naver.com', '1957-09-18', '1', '1', '0', '0', '0', '0');

insert into tbl_login(login_id, login_pwd, login_name)
values('admin89', '1', '박민호관리자');

insert into tbl_user(fk_login_id, user_email, user_birth, user_gender, user_status, user_ing, user_ed, user_boardcnt, user_report)
values('admin89', 'kaman123@naver.com', '1989-03-27', '1', '9', '0', '0', '0', '0');

------------ 박민호 회원 insert 작업 끝 ---------------