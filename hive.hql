show databases;
create database if not exists movie200;
use movie200;
create table data(uid int, mid int, rating int, timestamp int) row format delimited fields terminated by '\t';
load data local inpath 'Desktop/u.data' into table data;
create table item(mid int, mname String, date String, url String) row format delimited fields terminated by '|';
load data local inpath 'Desktop/item.txt' into table item;
create view  avgrating as select mid, avg(rating) as avgrating  from data group by mid;
SET hive.auto.convert.join=false;
select i.mname, a.avgrating from item i join avgrating a on i.mid = a.mid;
create table avgRatingTable(mid int, avgrating float)row format delimited fields terminated by ',';
insert into avgRatingTable select i.mname, a.avgrating from item i join avgrating a on i.mid = a.mid;
create view countrating as select mid, count(rating) as cnt from data group by mid order by cnt desc;
create table countRatingTable(mname string, countRating double) row format delimited fields terminated by ',';
insert into table countRatingTable select i.mname,c.cnt from item i join countrating c on i.mid = c.mid;

