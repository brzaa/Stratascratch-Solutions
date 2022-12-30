select distinct user_id, action
from facebook_web_log
where action like '%scroll_up%'