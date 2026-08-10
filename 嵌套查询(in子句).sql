select 产品名称
From cp
Where 产品编号 in
(select 产品编号
 From cpxsb
 Where 销售日期='2004/3/18'
 and 客户编号 in
   (select 客户编号
	From XSS
    Where 客户名称='家电市场'
   )   
)