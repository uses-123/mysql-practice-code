SELECT DISTINCT 产品名称
From CP
Where 产品编号 not in
(select 产品编号
 From cpxsb
 Where 销售日期='2004/3/18')