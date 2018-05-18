
--用户
create table t_userinfo( id number(20) not null,
                         loginname varchar2(200) not null,
                         nickname varchar2(200) not null,
                         password varchar2(200) not null,
                         phone varchar2(20)  not null,
                         createtime date not null, 
                         updatetime date not null,
                         status     number(1),
                         belongdept number(20)
                        );
                        
create sequence s_userinfo_id
minvalue 1
maxvalue 9999999999999999999
start with 1
increment by 1
cache 20
order;

drop table t_userinfo;

select a.rowid,a.* from t_sys_role a;
select a.rowid,a.* from t_sys_resource a;
select a.rowid,a.* from t_sys_role_resource a;
select a.rowid,a.* from T_ROLE a;
select a.rowid,a.* from t_sys_user a;
select * from t_sys_organization a;
select u.name,o.name ,o.* from T_SYS_DEPT_ADMIN a,t_sys_user u,t_sys_organization o where u.id=a.user_id and a.dept_no=o.id;


--角色
create table T_ROLE
(
  id          NUMBER(19) not null,
  name        VARCHAR2(64) not null,
  description VARCHAR2(255),
  status      NUMBER(2) not null
);
--用户角色关系
create table T_USER_ROLE
(
  id      NUMBER(19) not null,
  user_id VARCHAR2(16),
  role_id NUMBER(19)
);

-- 菜单
create table T_RESOURCE
(
  id           NUMBER(19) not null,
  name         VARCHAR2(64) not null,
  url          VARCHAR2(4000),
  description  VARCHAR2(255),
  icon         VARCHAR2(32),
  pid          NUMBER(19),
  seq          NUMBER(2) not null,
  status       NUMBER(2) not null,
  resourcetype NUMBER(2) not null,
  createdate   DATE,
  name_cn      VARCHAR2(64),
  menu_code    VARCHAR2(64)
);

create table T_ROLE_RESOURCE
(
  id          NUMBER(19) not null,
  role_id     NUMBER(19) not null,
  resource_id NUMBER(19) not null
);

-- Create table
create table T_ORGANIZATION
(
  id                   NUMBER(19) not null,
  name                 VARCHAR2(64) not null,
  address              VARCHAR2(100),
  createdate           DATE,
  description VARCHAR2(255)
);

                        
create table t_dirverinfo( id number(10) not null,
                           username varchar2(200)    not null,
                           telphone varchar2(20)     not null,
                           createtime date           not null, 
                           updatetime date           not null,
                           email      varchar2(30)   not null,
                           status     number(1) default 0      not null ,
                           licencepic varchar2(100)  not null,
                           belongdept number(10)
                          ); 
                          
create sequence s_dirverinfo_id
minvalue 1
maxvalue 9999999999999999999
start with 1
increment by 1
cache 20
order;                       
                        
                        
create table t_equipment( id number(10) not null,
                          equipnumber  varchar2(20) not null,
                          belongdept   number(2)    not null,
                          cardnumber   varchar2(20) not null,
                          brand        varchar2(20) not null,
                          flowcardnumber   varchar2(20)  not null,
                          displayicon      varchar2(100) not null,
                          driverid         number(2)     not null,
                          driverpic        varchar2(100) not null,
                          createtime       date not null, 
                          updatetime       date not null
                         );
create sequence s_equipment_id
minvalue 1
maxvalue 9999999999999999999
start with 1
increment by 1
cache 20
order; 

create table t_dept
(
  id          number(19) not null,
  name        varchar2(64) not null,
  description varchar2(255)
);

create table t_equipposinfo( cardnumber   varchar2(20) not null,
                             longitude    number(20,2) not null,
                             dimension    number(20,2) not null,
                             ctime        date         not null);      
                        
create table t_equipposinfo( cardnumber   varchar2(20) not null,
                             longitude    number(20,2) not null,
                             dimension    number(20,2) not null,
                             ctime        date         not null); 


create table T_DEVICELIST
(
  id          NUMBER(10) not null,
  name        VARCHAR2(200) not null,
  pid         NUMBER(10),
  isleaf      NUMBER(1),
  description VARCHAR2(200)
);


insert into t_devicelist(id,name,pid,isleaf,description) values(0,'root',-1,0,'root node');
							 