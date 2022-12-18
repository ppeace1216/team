create table yearDis (
    no number primary key,
    title varchar2(50),
    ydisA varchar2(10),
    ydisB varchar2(10),
    ydisC varchar2(10),
    ydisD varchar2(10),
    ydisE varchar2(10),
    period varchar2(50),
    target varchar2(50),
    caution varchar2(200)
);
drop table yearDis;
create SEQUENCE yseq;
insert into yearDis values (yseq.nextval, '더미 데이터', 200000, 150000, 120000, 100000, 110000, '2022-12-01 ~ 2022-12-31', '더미 타겟', '유의사항!');
select * from yeardis;
commit;