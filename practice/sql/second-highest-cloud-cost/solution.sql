select
  distinct amount
from(
select
  amount,
  dense_rank() over ( order by amount desc) amt_rnk
from 
  cloud_costs
) c
where amt_rnk=2
