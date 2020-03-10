-- 卻診年齡區間與人數對應
select if((age mod 10) < 0, 'null', concat(convert((age mod 10)*10, CHAR), '-', convert(((age mod 10)+1)*10-1, CHAR))) as age_range,
 count(*) as cnt
from patient
group by age mod 10;

-- 性別與人數對應
select sex, count(*) as cnt
from patient
group by sex;

-- 第一起沒有中國旅遊史的病患資訊
select * from patient
where country != 'China'
and date_confirmation != '0000-00-00'
order by date_confirmation asc
limit 1;

-- 近五天內，確診人數成長最多的地方
