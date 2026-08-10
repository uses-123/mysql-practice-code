SELECT 产品编号,产品名称,
	    CASE 
	        WHEN 价格 < 1000 THEN '廉价产品'
	        WHEN 价格 BETWEEN 1000 AND 2000 THEN '一般产品'
	        WHEN 价格 BETWEEN 2001 AND 3000 THEN '昂贵产品'
	        WHEN 价格 > 3000 THEN '很昂贵产品'
	    END AS 评价
FROM CP;