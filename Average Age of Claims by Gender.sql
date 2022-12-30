with avg as
(select b.gender,b.age,count(a.claim_id) claim, a.account_id,a.date_submitted
from cvs_claims a
join cvs_accounts b
on a.account_id = b.account_id
where year(date_submitted)= 2021
group by a.account_id
having claim >1)

select gender,round(avg(age)) avg_age from avg
group by gender