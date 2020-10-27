create table bo(
    num number not null,
    name varchar2(100) not null,
	title varchar2(100) not null,
	content clob not null,
	hit number(5) default 0 not null,
	reg_date date default sysdate not null,
	modify_date date default sysdate not null,
	uploadfile blob,
	filename varchar2(100),
	constraint spboard_pk primary key (num)
);

create sequence bo_seq;
