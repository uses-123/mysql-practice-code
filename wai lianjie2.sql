select
     产品编号,客户名称,销售日期,数量,销售额
from 
     xss
left join
     cpxsb
on
    xss.客户编号=cpxsb.客户编号