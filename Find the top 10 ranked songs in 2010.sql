select distinct year_rank,song_name,group_name
from billboard_top_100_year_end
where year = 2010 and year_rank between 1 and 10
order by year_rank asc