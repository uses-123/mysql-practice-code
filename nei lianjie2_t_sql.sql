select 产品名称
from xss,cpxsb
join cp
ON cpxsb.客户编号=xss.客户编号 
and cp.产品编号= cpxsb.产品编号
where 客户名称='家电市场'