SELECT DISTINCT 客户名称
FROM xss
WHERE 客户编号 IN (
    SELECT DISTINCT 客户编号
    FROM cpxsb
    WHERE 产品编号 IN (
        SELECT 产品编号
        FROM cpxsb
        WHERE 客户编号 = '000001'
    )
    -- 排除客户编号为“000001”的客户本身。
    AND 客户编号 != '000001'
);
