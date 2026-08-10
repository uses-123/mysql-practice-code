SELECT 
    产品名称,价格,库存量,销售日期,客户编号,数量
FROM 
    cp
LEFT JOIN 
    cpxsb
ON 
    cp.产品编号=cpxsb.产品编号