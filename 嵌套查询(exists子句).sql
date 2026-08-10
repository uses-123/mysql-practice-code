select 产品名称
From cp
Where exists
(select *
 from cpxsb
 where cp.产品编号=cpxsb.产品编号 and 销售日期='2004/3/18' 
 and exists
 (select *
  from xss
  where xss.客户编号=cpxsb.客户编号 and 客户名称='家电市场')
 )