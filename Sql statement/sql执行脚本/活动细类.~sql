SELECT
DISTINCT
  t1. ID AS ID,
  t1.ACCOUNT_CODE AS accountCode,
  t1.ACCOUNT_NAME AS accountName,
  t1.ACT_MODE AS actMode,
  t1.COST_CLASSIFY AS costClassify,
  t1.HAS_AUDIT AS hasAudit,
  t1.OVER_AUDIT_SCALE AS overAuditScale,
  t1.AUDIT_VALID_MONTH AS auditValidMonth,
  t1.HAS_NEGATIVE_AMOUNT AS hasNegativeAmount,
  t1.HAS_PUSH_SFA AS hasPushSfa,
  t1.ACT_TYPE AS actType,
  t1.ACT_TYPE_NAME AS actTypeName,
  t1.HAS_MULTIPLE_AUDIT AS hasMultipleAudit,
  t1.PAYMENT_MODERN AS paymentModern,
  t1.PAYMENT_CIRCULATION AS paymentCirculation,
  t1.ACT_DEPLOY_REQUIRE AS,
  t1.CUSTOMER_TYPE AS customerType,
  t1.ACT_DA_REQUIRE AS actDaRequire,
  t1.AUDIT_MATERIAL_MODERN AS auditMaterialModern,
  t1.AUDIT_MATERIAL_CIRCULATION AS auditMaterialCirculation,
  t1.REMARK AS remark,
  t1.CREATE_DATE AS createDate,
  t1.CREATE_NAME AS createName,
  t1.UPDATE_DATE AS updateDate,
  t1.UPDATE_NAME AS updateName,
  t1.ENABLE_STATUS AS enableStatus,
  t1.HAS_TERMINAL AS hasTerminal,
  t1.HAS_PRODUCT AS hasProduct,
  t1.PAYMENT_MODERN_NAME AS paymentModernName,
  t1.ACT_DEPLOY_REQUIRE_NAME AS actDeployRequireName,
  t1.ACT_DA_REQUIRE_NAME AS actDaRequireName,
  t1.AUDIT_MATERIAL_MODERN_NAME AS auditMaterialModernName,
  t2.cost_type_names AS costTypeName,
  t2.cost_type_codes AS costTypeCode,
  t3.FINANCIAL_NAMES as financialAccountName,
  t3.FINANCIAL_CODES as financialAccountCode
FROM
  TT_COST_ACCOUNT t1
LEFT JOIN (
SELECT
  tt1.COST_ACCOUNT_CODE,
 to_char(listagg(tt2.cost_type_name,',') within GROUP (ORDER BY tt1.cost_account_code)) as cost_type_names,
 to_char(listagg(tt2.cost_type_code,',') within GROUP (ORDER BY tt1.cost_account_code)) as cost_type_codes
FROM tt_r_cost_type_cost_account tt1
LEFT JOIN tt_cost_type tt2 on tt2.cost_type_code=tt1.cost_type_code
GROUP BY tt1.COST_ACCOUNT_CODE
) t2 on t1.ACCOUNT_CODE = t2.COST_ACCOUNT_CODE

left join(
select t3.ACCOUNT_CODE,
 to_char(listagg(t6.ACCOUNT_NAME,',') within GROUP (ORDER BY t4.cost_account_code)) as FINANCIAL_NAMES,
 to_char(listagg(t6.ACCOUNT_CODE ,',') within GROUP (ORDER BY t4.cost_account_code)) as FINANCIAL_CODES
from TT_COST_ACCOUNT t3
left join tt_r_cost_type_cost_account t4
on t3.ACCOUNT_CODE=t4.COST_ACCOUNT_CODE
left join tt_cost_type t5 on t5.COST_TYPE_CODE=t4.COST_TYPE_CODE
left join tt_financial_account t6 on t6.ACCOUNT_CODE=t5.financial_account_code
GROUP BY t3.ACCOUNT_CODE
)t3 on t3.ACCOUNT_CODE = t1.ACCOUNT_CODE
WHERE 1=1

select * from tt_financial_account
