select distinct b.post_id,b.poster,b.post_text,b.post_keywords,b.post_date
from facebook_reactions a
inner join facebook_posts b
on a.post_id = b.post_id
where a.reaction = 'heart'