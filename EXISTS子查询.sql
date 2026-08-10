SELECT DISTINCT 产品名称
From cp
Where not exists
(select *
From cpxsb
Where cp.产品编号=cpxsb.产品编号 and 销售日期='2004/3/18'
)