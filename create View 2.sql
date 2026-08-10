CREATE TABLE CP1
(select 产品编号,产品名称,价格,库存量
FROM cp
WHERE 产品编号 <='100010')��品名称,
    cp.价格,
    cpxsb.销售日期,
    cpxsb.数量
FROM 
    cp
JOIN 
    cpxsb ON cp.产品编号 = cpxsb.产品编号
JOIN 
    xss ON cpxsb.客户编号 = xss.客户编号;