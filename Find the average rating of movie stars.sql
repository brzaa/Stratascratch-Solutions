select a.name, b.birthday, avg(rating) as avg_rating
from nominee_filmography a 
join nominee_information b
on a.name = b.name
group by 1,2
order by 2 asc