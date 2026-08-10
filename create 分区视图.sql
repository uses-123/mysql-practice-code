CREATE VIEW VIEW_CP12 AS
SELECT 产品编号,产品名称,价格,库存量
FROM cp1
UNION ALL
SELECT 产品编号,产品名称,价格,库存量
FROM cp2