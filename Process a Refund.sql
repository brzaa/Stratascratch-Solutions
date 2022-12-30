SELECT billing_cycle_in_months,
min(datediff(refunded_at,settled_at)) min_days,
avg(datediff(refunded_at,settled_at)) avg_days,
max(datediff(refunded_at,settled_at)) max_days
FROM noom_signups a
JOIN noom_transactions b ON a.signup_id = b.signup_id
JOIN noom_plans c ON a.plan_id = c.plan_id
where started_at >= '2019-01-01'
group by 1
