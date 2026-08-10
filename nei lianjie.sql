select DISTINCT 产品名称
from cp,cpxsb
where cp.产品编号 = cpxsb.产品编号 and 销售日期='2004/3/18'