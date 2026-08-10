Select 产品编号
From cpxsb
Where 数量>
(Select MAX(数量)
From CPXSB
Where 销售日期='2004/3/18')