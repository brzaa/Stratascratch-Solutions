select distinct host_id, guest_id
from airbnb_hosts a
inner join airbnb_guests b
on a.nationality = b.nationality and a.gender = b.gender