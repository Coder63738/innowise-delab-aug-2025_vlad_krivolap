select username , title
from FACT_MUSICANALYTIC
inner join DIM_USER on fact_musicanalytic.USERKEY = dim_user.USERKEY
inner join DIM_SONG on fact_musicanalytic.SONGKEY = dim_song.SONGKEY
where favorites = True;

select username, count(username)
from FACT_MUSICANALYTIC
inner join DIM_USER on DIM_USER.USERKEY = FACT_MUSICANALYTIC.USERKEY 
group by dim_user.USERNAME
HAVING count(username) = (
select max(count)
from (select count(username) as count
from FACT_MUSICANALYTIC
inner join DIM_USER on DIM_USER.USERKEY = FACT_MUSICANALYTIC.USERKEY 
group by USERNAME
))
limit 1;

select countryName, count(countryName)
from FACT_MUSICANALYTIC
inner join DIM_COUNTRY on FACT_MUSICANALYTIC.COUNTRYKEY = DIM_COUNTRY.COUNTRYKEY
group by COUNTRYNAME
order by count(COUNTRYNAME) DESC
limit 10;

select gender, count(gender)
from FACT_MUSICANALYTIC
inner join DIM_USER on fact_musicanalytic.USERKEY = dim_user.USERKEY
group by dim_user.GENDER 
having count(GENDER) = (
select max(count)
from (select gender,COUNT(gender) as count
from FACT_MUSICANALYTIC
inner join DIM_USER on fact_musicanalytic.USERKEY = dim_user.USERKEY
group by dim_user.GENDER )
limit 1
);

SELECT username , time
from FACT_MUSICANALYTIC
inner join DIM_time on fact_musicanalytic.TIMEKEY = dim_time.TIMEKEY
inner join DIM_USER on fact_musicanalytic.USERKEY = dim_user.USERKEY
where time > TIME '12:00:00';