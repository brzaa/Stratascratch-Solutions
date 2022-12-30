select DENSE_RANK() over (order by sum(n_messages) desc) as rank_msg,id_guest, sum(n_messages) as total_msg
from airbnb_contacts
group by id_guest