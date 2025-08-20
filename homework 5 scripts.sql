select gender, count(gender)
from fact_table 
inner join who on fact_table.surrogation_key = who.surrogation_key
inner join who_exactly on who.user_id = who_exactly.user_id
group by gender
having count(gender) = (Select max(count)
from (select gender, count(gender) as count
from fact_table 
inner join who on fact_table.surrogation_key = who.surrogation_key
inner join who_exactly on who.user_id = who_exactly.user_id
group by gender));

select country_name, count(country_name)
from fact_table
inner join where1 on fact_table.surrogation_key = where1.surrogation_key
inner join country on where1.country_id = country.country_id
group by country_name
order by count(country_name) DESC
limit 10;

select username, count(username)
from fact_table
inner join who on fact_table.surrogation_key = who.surrogation_key
inner join who_exactly on who.user_id = who_exactly.user_id
group by username
order by count(username) DESC
limit 1;

from fact_table
inner join what on fact_table.surrogation_key = what.surrogation_key
inner join music on music.music_id = what.music_id
inner join author on music.author_id = author.author_id
where user_id = 1
group by author
order by count(author) DESC
limit 10;

select (sum(listening_time)/sum(duration)) as percent
from fact_table
inner join what on fact_table.surrogation_key = what.surrogation_key
inner join what on fact_table.surrogation_key = how_many.surrogation_key
inner join music on music.music_id = what.music_id;

