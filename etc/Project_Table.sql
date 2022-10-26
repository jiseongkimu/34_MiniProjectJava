create table usertbl( -- 유저 정보 --
    userid varchar2(30) not NULL PRIMARY KEY, -- 유저 아이디 --
    userpw varchar2(30) NOT NULL, -- 암호 --
    username varchar2(20) not null, -- 이름 --
    userphone NUMBER(16) not null, -- 연락처 --
    usernickname varchar2(30) not null primary key, -- 닉네임 --
    usermail VARCHAR2(100) not null, -- 이메일 --
    marketing varchar2(20) DEFAULT NULL, -- 마케팅 수신 동의 --
    useraddress1 VARCHAR2(100) not null, -- 주소 --
    useraddress2 VARCHAR2(100) not null, -- 상세 주소 --
    usergender varchar2(10) not null -- 성별 --
    );
    
create table cpubox(
    cpumade VARCHAR2(30) not null, -- intel, amd --
    cpuname VARCHAR2(10) not null, -- cpu 종류 ex) i7 12세대 or Ryzen7 4세대
    cpuseries VARCHAR2(30) not null, -- 정품, 벌크, 에디션
    cpucore number(5) not null, -- 코어 수 --
    cputhread number(5) not null, -- 스레드 수 --
    cpusocket varchar2(20) not null -- 소켓 --
    );

create table mainboardbox(
    boardmade varchar2(20) not null, -- 메인보드 제조사 ASUS,AMD,GIGABYTE --
    boardseries VARCHAR2(10) not null, -- 종류 intel, amd
    boardsocket varchar2(20) not null, -- 소켓 1151, 1200, 1700, AM4, AM5
    boardstandard varchar2(20) not null, -- 규격 ATX, M-ATX, E-ATX, M-ITX
    boardmemory varchar2(30) not null, -- DDR4, DDR5  --
    boardmemorysocket NUMBER(4) not null, -- 메모리 슬롯 수 --
    boardpowersocket NUMBER(4) not null -- 전원부 페이즈 --
    );
 
create table rambox(
    ramproperty varchar2(20) not null, -- PC용 노트북용 서버용
    rammade varchar2(20) not null, -- 제조사
    ramseries varchar2(10) not null, -- DDR4 DDR5
    ramstorage NUMBER(3) not null, --램 용량
    ramclock number(4) not null -- 램 클럭
    );
    
create table vgabox(
    vgamseries varchar2(20) not null, -- NVDIA, AMD
    vgamade varchar2(20) not null, -- 제조사 MSI, ASUS
    vgatype varchar2(20) not null, -- RTX, GTX, GT, Radeon RX
    vgaconnect varchar2(20) not null, -- PCI 슬롯
    vgamemory NUMBER(3) not null, -- 그래픽카드 메모리
    vgamemorytype VARCHAR2(10) not null -- DDR5, DDR6
    );
    


create table board( -- 게시판 --
num number(3) not null primary key, -- 사용자 아이디(PK)
writer varchar2(20),
email varchar2(50),
subject varchar2(50),
password varchar2(30),
reg_date date,
ref number(3),
re_step number(3),
re_level number(3),
readcount number(3),
content varchar2(500));

create sequence board_seq;
commit;
 
drop sequence board_seq;
drop table board;

select*from board;    
