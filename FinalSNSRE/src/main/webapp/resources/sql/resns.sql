show user;
--USER이(가) "RESNS"입니다.

select *
from tbl_guri;

-----------------------<다희: 동영상 답변, 동영상>시작------------------
--동영상
create table tbl_music
(seq_tbl_music  number              not null    --동영상 시퀀스
,fk_login_id    varchar2(30)        not null    --동영상게시물올린사람 아이디
,music_link     varchar2(200)       not null    --유튭링크
,music_name     varchar2(100)       not null    --동영상 게시글 이름
,music_content  varchar2(500)                   --동영상 게시글 내용
,music_date     date default sysdate  not null  --동영상 올린 날자
,music_commentCount   number default 0      not null   -- 댓글수
,constraint PK_tbl_music primary key(seq_tbl_music,fk_login_id)
,constraint FK_tbl_music foreign key(fk_login_id)
                          references tbl_user(fk_login_id)
);

--alter table tbl_music
--add music_groupno number not null;

alter table tbl_music
add music_commentCount number default 0  not null;


--drop table tbl_music purge;

comment on table tbl_music
is '유튜브동영상테이블';

comment on column tbl_music.seq_tbl_music
is '동영상게시물 시퀀스';

comment on column tbl_music.fk_login_id
is '동영상올린 user아이디';

comment on column tbl_music.music_link
is '유튜브 링크';

comment on column tbl_music.music_name
is '동영상게시물 이름';

comment on column tbl_music.music_content
is '동영상게시물 내용';

comment on column tbl_music.music_date
is '동영상게시물 올린날짜';

comment on column tbl_music.music_commentCount
is '게시물에 답글갯수(게시물테이블에표시할용도)';

--drop sequence seq_tbl_music purge;

--동영상 시퀀스
create sequence seq_tbl_music
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

--동영상 답변
create table tbl_remusic
(seq_tbl_remusic    number                 not null  --동영상답변 시퀀스
,re_ycontent        varchar2(300)          not null  --동영상답변내용
,re_ydate           date default sysdate   not null  --동영상답변 단 날짜
,re_login_id        varchar2(30)           not null  --동영상답변남긴사람 아이디(원게시물)
,seq_tbl_music      number                 not null  --동영상시퀀스
,fk_login_id        varchar2(30)           not null  --동영상올린사람의아이디
,constraint PK_tbl_remusic primary key(seq_tbl_remusic)
,constraint FK_tbl_remusic foreign key(seq_tbl_music,fk_login_id)
                           references tbl_music(seq_tbl_music,fk_login_id)on delete cascade                        
);

comment on table tbl_remusic
is '유튜브동영상댓글 테이블';

comment on column tbl_remusic.seq_tbl_remusic
is '동영상댓글 시퀀스';

comment on column tbl_remusic.re_ycontent
is '동영상댓글';

comment on column tbl_remusic.re_ydate
is '동영상댓글올린날짜';

comment on column tbl_remusic.seq_tbl_music
is '어떤게시물에댓글올린지보기위해 동영상시퀀스';

comment on column tbl_remusic.fk_login_id
is '동영상게시물올린사람의 아이디';

comment on column tbl_remusic.re_login_id 
is '댓글쓴사람 아이디';



--동영상 댓글 시퀀스
create sequence seq_tbl_remusic
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

-----다희----------------------------------------------------------------------
select *
from tbl_user;

select *
from tbl_login;


--select * from tab;
--select * from user_tab_comments;
--select * from user_col_comments
--where table_name = '테이블명 대문자로';

--회원 인서트(3명)
insert into tbl_login(login_id, login_pwd, login_name)
values('yundh', 'qwer1234$', '윤다희');

insert into tbl_user(fk_login_id, user_email, user_birth, user_gender, user_status, user_ing, user_ed, user_boardcnt, user_report)
values('yundh', 'yundh@gamil.com', '1991-09-11', '1', '1', '112', '56', '24', '01');

insert into tbl_login(login_id, login_pwd, login_name)
values('wow', 'qwer1234$', '이와우');

insert into tbl_user(fk_login_id, user_email, user_birth, user_gender, user_status, user_ing, user_ed, user_boardcnt, user_report)
values('wow', 'wow@gamil.com', '1989-02-11', '1', '1', '112', '56', '24', '01');

insert into tbl_login(login_id, login_pwd, login_name)
values('rere', 'qwer1234$', '김알이');

insert into tbl_user(fk_login_id, user_email, user_birth, user_gender, user_status, user_ing, user_ed, user_boardcnt, user_report)
values('rere', 'rere@naver.com', '1998-11-11', '1', '1', '112', '6', '200', '01');

commit;

------------------------------------------------------------------------------

------------------------------<게시물테이블>-------------------------------------
create table tbl_user
(fk_login_id        varchar2(30)              --- 아이디
,user_email         varchar2(50)    not null  --- 이메일
,user_birth         varchar2(20)    not null  --- 생년월일
,user_gender        NUMBER          not null  --- 성별
,user_status        NUMBER          not null  --- status
,user_ing           NUMBER          not null  --- 팔로잉
,user_ed            NUMBER          not null  --- 팔로워
,user_boardcnt      NUMBER          not null  --- 내글게시물수
,user_report        NUMBER(2)       not null  --- 신고당한횟수
,constraint FK_tbl_user_fk_login_id foreign key(fk_login_id) references tbl_login(login_id)
,constraint PK_tbl_user_fk_login_id primary key(fk_login_id)
,constraint CK_tbl_user_user_status check( user_status in(0,1,9) )
);


select *
from tbl_login;

select * from user_col_comments
where table_name = 'TBL_LOGIN';
/*
tbl_login
LOGIN_ID : 아이디
LOGIN_PWD : 비번
LOGIN_NAME : 별명
*/
---------------검색쿼리-------------------------------------------------



---------------------------------다희 끝----------------------------------------

