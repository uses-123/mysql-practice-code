SELECT DISTINCT 客户名称
FROM xss
WHERE 客户编号 IN (
    SELECT 客户编号
    FROM cpxsb
    GROUP BY 客户编号
    -- 比较每个客户购买的产品数量是否等于总产品数量。
    HAVING COUNT(DISTINCT 产品编号) 
    -- 用于计算总共有多少种产品。 
    = (SELECT COUNT(DISTINCT 产品编号) FROM cp)
);
