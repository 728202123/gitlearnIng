select
*
from (
  select
	distinct
	t2.type,
	t2.org_code,
	t2.org_name,
	t1.customer_code,
	t1.customer_name,
	t2.fridge_type,
  t5.fridge_number,
	nvl(t3.total_amount,0) as total_back_amount,
	nvl(t4.total_back_amount,0) as total_backed_amount,
  nvl((t3.total_amount-(nvl(t4.total_back_amount,0))),0) as total_waite_amount,
  t6.city AS city,
  t6.area AS area,
  (select org_name from tm_org where org_type = 'XSB' start with id = t6.org_id connect by prior parent_id  = id ) AS saleDept
	from
	tt_fridge_detail t1
	left join tt_fridge_main t2 on t1.fridge_code = t2.fridge_code
  left join (
        select
          tt2.customer_code,
          tt4.fridge_code,
          sum(tt2.rebate_amount) as total_amount
        from tt_fridge_detail tt2
        left join tt_fridge_main tt4 on tt2.fridge_code = tt4.fridge_code
        group by tt2.customer_code,tt4.fridge_code
  )t3 on t1.customer_code = t3.customer_code

  left join (
        select
          tt3.customer_code,
          sum(tt3.apply_amount) as total_back_amount
        from tt_fridge_detail tt3
        where tt3.rebate_status in (1,2)
        group by tt3.customer_code
  )t4 on t1.customer_code = t4.customer_code

  left join (
	select customer_code,count(1) as fridge_number from (select
				DISTINCT
          tt2.customer_code,
          tt2.fridge_code
        from tt_fridge_detail tt2)
        GROUP BY customer_code
  )t5 on t1.customer_code = t5.customer_code

  LEFT JOIN tm_customer t6 ON t2.customer_Code = t6.customer_Code

)t
where 1=1
AND t.org_code IN (
SELECT org_code FROM tm_org t START WITH org_code = '${authOrgCode}'
         CONNECT BY PRIOR t.id= t.parent_id
)
<#if vo.customerCode ?exists && vo.customerCode ?length gt 0>
	AND t.customer_code like '%${vo.customerCode}%'
</#if>
<#if vo.orgCode ?exists && vo.orgCode ?length gt 0>
	AND t.org_code IN (
    SELECT org_code FROM tm_org t START WITH org_code = '${vo.orgCode}'
           CONNECT BY PRIOR t.id= t.parent_id
	)
</#if>
<#if vo.customerName ?exists && vo.customerName ?length gt 0>
	AND t.customer_name like '%${vo.customerName}%'
</#if>
<#if vo.fridgeType ?exists && vo.fridgeType ?length gt 0>
	AND t.fridge_type = '${vo.fridgeType}'
</#if>
<#if vo.type ?exists && vo.type ?length gt 0>
	AND t.type = '${vo.type}'
</#if>
order by t.customer_name
