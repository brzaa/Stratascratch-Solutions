select guest_id, rank () over (order by age desc) as age_rank
from airbnb_guests
order by age desc;