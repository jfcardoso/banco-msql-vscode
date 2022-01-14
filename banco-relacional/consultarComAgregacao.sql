
select 
    regiao as `Região`,
    sum(populacao) as `Total(em milhões)`
from estados
group by regiao
order by `Total(em milhões)` desc;    