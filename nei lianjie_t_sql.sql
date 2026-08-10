SELECT distinct 产品名称 
FROM cp 
JOIN cpxsb 
ON cp.产品编号 = cpxsb.产品编号
where 销售日期='2004/3/18';