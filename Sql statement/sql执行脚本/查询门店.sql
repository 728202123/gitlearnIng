SELECT
  t1.USERNAME AS driverId,
  t2.DRP_CODE AS drpCode,
  t3.ERP_CODE AS erpCode,
  t5.TERMINAL_CODE AS terminalCode,
  t5.TERMINAL_NAME AS terminalName,
  t5.TERMINAL_TYPE AS terminalType,
  t5.LINKMAN AS linkMan,
  t5.LINKMAN_PHONE AS linkmanPhone,
  t5.PROVINCE AS province,
  t5.CITY AS city,
  t5.AREA AS area,
  t5.ADDRESS AS address,
  t5.CREATE_NAME AS createName,
  t5.CREATE_DATE AS createDate,
  t5.channel_type,
  t5.cooperative
FROM
  tm_user t1
LEFT JOIN tm_drp_user t2 ON t1.ext_char_8 = t2.drp_code
LEFT JOIN TM_CUSTOMER t3 ON t2.kunnr = t3.erp_code
LEFT JOIN TM_R_TERM_CUST_POS_BG t4 ON t4.CUSTOMER_ID = t3. ID
LEFT JOIN TM_TERMINAL t5 ON t4.TERMINAL_ID = t5. ID
WHERE
  1 = 1
  AND T1.USERNAME='S001431'
  
  select * from TM_TERMINAL
  
  
 select * from tm_org   where org_name='低温石现KA直营'
  
 select * from tm_org   
  
  
  
  
  
  
  
  select  * from tm_drp_user
  
  
  
  
  
  
  
  select
    t2.ID as id,
    t2.business_Desc as businessDesc,
    t2.business_Id as businessId,
    t2.content,
    t2.create_date as createDate,
    t2.create_name as createName,
    t2.OPERATION_TYPE as operationType,
    t2.POSITION_NAME as positionName
            from

    tm_drp t1

    inner join tm_log t2 on t1.id = t2.business_id
    where 1 = 1
    and t1.id = '50A71A14B3DF45EAE053880AA8C0660B'
    order by t2.create_date desc
  
  
  select * from tm_log
  
  
  
  
  
  
  
  
SELECT
distinct 
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
	t3.ACCOUNT_CODE AS financialAccountCode,
	t3.ACCOUNT_NAME AS financialAccountName
FROM
	TT_COST_ACCOUNT t1
LEFT JOIN (
SELECT
	tt1.COST_ACCOUNT_CODE,
	tt2.financial_account_code,
 to_char(listagg(tt2.cost_type_name,',') within GROUP (ORDER BY tt1.cost_account_code)) as cost_type_names,
 to_char(listagg(tt2.cost_type_code,',') within GROUP (ORDER BY tt1.cost_account_code)) as cost_type_codes
FROM tt_r_cost_type_cost_account tt1
LEFT JOIN tt_cost_type tt2 on tt2.cost_type_code=tt1.cost_type_code
GROUP BY tt1.COST_ACCOUNT_CODE,tt2.financial_account_code
) t2 on t1.ACCOUNT_CODE = t2.COST_ACCOUNT_CODE
left join tt_financial_account t3 on t2.financial_account_code = t3.account_code
WHERE 1=1  
  AND T1.USERNAME='S005319'
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  select * from tm_user where user_type='2'
  
  
  
  
  
  
  
  SELECT
ID
TERMINAL_CODE
TERMINAL_NAME
TERMINAL_TYPE
CHANNEL_TYPE
ORG_ID
COOPERATIVE
ADDRESS
LINKMAN
LINKMAN_PHONE
ERP_CODE
CREATE_DATE
CREATE_NAME
UPDATE_DATE
UPDATE_NAME
EXT_CHAR_1
EXT_CHAR_2
EXT_CHAR_3
EXT_CHAR_4
EXT_CHAR_5
EXT_CHAR_6
EXT_CHAR_7
EXT_CHAR_8
EXT_CHAR_9
EXT_CHAR_10
EXT_CHAR_11
EXT_CHAR_12
EXT_CHAR_13
EXT_CHAR_14
EXT_CHAR_15
EXT_NUMBER_1
EXT_NUMBER_2
EXT_NUMBER_3
EXT_NUMBER_4
EXT_NUMBER_5
PROVINCE
CITY
AREA
ENABLE_STATUS
EXT_CHAR_16
EXT_CHAR_17
EXT_CHAR_18
EXT_CHAR_19
EXT_CHAR_20
EXT_CHAR_21
EXT_CHAR_22
EXT_CHAR_23
EXT_CHAR_24
EXT_CHAR_25
EXT_CHAR_26
EXT_CHAR_27
EXT_CHAR_28
EXT_CHAR_29
EXT_CHAR_30
BPM_STATUS

FROM
	tm_user t1
LEFT JOIN tm_drp_user t2 ON t1.ext_char_8 = t2.drp_code
LEFT JOIN TM_CUSTOMER t3 ON t2.kunnr = t3.erp_code
LEFT JOIN TM_R_TERM_CUST_POS_BG t4 ON t4.CUSTOMER_ID = t3. ID
INNER JOIN TM_TERMINAL t5 ON t5. ID = t4.TERMINAL_ID

WHERE




select * from TM_TERMINAL




	1 = 1 
   and USERNAME='S000703'

  
  select * from tm_terminal where terminal_type='direct'
  
  
    select * from tm_user where user_type='2'
    
    
    
    
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
	t3.ACCOUNT_CODE AS financialAccountCode,
	t3.ACCOUNT_NAME AS financialAccountName
	LEFT JOIN (
SELECT
	tt1.COST_ACCOUNT_CODE,
	tt2.financial_account_code,
 to_char(listagg(tt2.cost_type_name,',') within GROUP (ORDER BY tt1.cost_account_code)) as cost_type_names,
 to_char(listagg(tt2.cost_type_code,',') within GROUP (ORDER BY tt1.cost_account_code)) as cost_type_codes
FROM tt_r_cost_type_cost_account tt1
LEFT JOIN tt_cost_type tt2 on tt2.cost_type_code=tt1.cost_type_code
GROUP BY tt1.COST_ACCOUNT_CODE,tt2.financial_account_code
) t2 on t1.ACCOUNT_CODE = t2.COST_ACCOUNT_CODE
left join tt_financial_account t3 on t2.financial_account_code = t3.account_code
 FROM TT_COST_ACCOUNT t1
WHERE 1=1




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
  t2.COST_ACCOUNT_CODE,
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
 to_char(listagg(t6.FINANCIAL_CODE ,',') within GROUP (ORDER BY t4.cost_account_code)) as FINANCIAL_CODES
from TT_COST_ACCOUNT t3
left join tt_r_cost_type_cost_account t4
on t3.ACCOUNT_CODE=t4.COST_ACCOUNT_CODE
left join tt_cost_type t5 on t5.COST_TYPE_CODE=t4.COST_TYPE_CODE
left join tt_financial_account t6 on t6.ACCOUNT_CODE=t5.financial_account_code
GROUP BY t3.ACCOUNT_CODE
)t3 on t3.ACCOUNT_CODE = t1.ACCOUNT_CODE







left join tt_financial_account t3 on t2.financial_account_code = t3.account_code

WHERE 1=1
  
  select * from TT_COST_ACCOUNT
select * from tt_cost_type t1  left join tt_financial_account t2 on t1.financial_account_code=t2.account_code
select * from tt_financial_account
select * from tt_r_cost_type_cost_account where COST_ACCOUNT_CODE = 'XL10013'




SELECT
t1.USERNAME AS driverId,
	t2.DRP_CODE AS drpCode,
	t3.ERP_CODE AS erpCode,
  t5.ID as id,
  t5.TERMINAL_CODE as terminalCode,
  t5.TERMINAL_NAME as terminalName,
  t5.TERMINAL_TYPE as terminalType,
  t5.CHANNEL_TYPE as channelType,
  t5.ORG_ID as orgId,
  t5.COOPERATIVE as cooperative,
  t5.ADDRESS as address,
  t5.LINKMAN as linkMan,
  t5.LINKMAN_PHONE as linkmanPhone,
  t5.CREATE_DATE as createDate,
  t5.CREATE_NAME as createName,
  t5.UPDATE_DATE as updateDate,
  t5.UPDATE_NAME as updateName,
  t5.EXT_CHAR_1 as extChar_1,
  t5.EXT_CHAR_2 as extChar_2,
  t5.EXT_CHAR_3 as extChar_3,
  t5.EXT_CHAR_4 as extChar_4,
  t5.EXT_CHAR_5 as extChar_5,
  t5.EXT_CHAR_6 as extChar_6,
  t5.EXT_CHAR_7 as extChar_7,
  t5.EXT_CHAR_8 as extChar_8,
  t5.EXT_CHAR_9 as extChar_9,
  t5.EXT_CHAR_10 as extChar_10,
  t5.EXT_CHAR_11 as extChar_11,
  t5.EXT_CHAR_12 as extChar_12,
  t5.EXT_CHAR_13 as extChar_13,
  t5.EXT_CHAR_14 as extChar_14,
  t5.EXT_CHAR_15 as extChar_15,
  t5.EXT_NUMBER_1 as extNumber_1,
  t5.EXT_NUMBER_2 as extNumber_2,
  t5.EXT_NUMBER_3 as extNumber_3,
  t5.EXT_NUMBER_4 as extNumber_4,
  t5.EXT_NUMBER_5 as extNumber_5,
  t5.PROVINCE as province,
  t5.CITY as city,
  t5.AREA as area,
  t5.ENABLE_STATUS as enable_status,
  t5.EXT_CHAR_16 as extChar_16,
  t5.EXT_CHAR_17 as extChar_17,
  t5.EXT_CHAR_18 as extChar_18,
  t5.EXT_CHAR_19 as extChar_19,
  t5.EXT_CHAR_20 as extChar_20,
  t5.EXT_CHAR_21 as extChar_21,
  t5.EXT_CHAR_22 as extChar_22,
  t5.EXT_CHAR_23 as extChar_23,
  t5.EXT_CHAR_24 as extChar_24,
  t5.EXT_CHAR_25 as extChar_25,
  t5.EXT_CHAR_26 as extChar_26,
  t5.EXT_CHAR_27 as extChar_27,
  t5.EXT_CHAR_28 as extChar_28,
  t5.EXT_CHAR_29 as extChar_29,
  t5.EXT_CHAR_30 as extChar_30,
  t5.BPM_STATUS as bpmStatus,
  t6.ORG_CODE as orgCode,
  t6.ORG_TYPE as orgType,
  t8.customer_name as customerName,
  t9.position_code as positionCode,
  t9.position_name as positionName,
  t11.fullname
FROM
	tm_user t1
LEFT JOIN tm_drp_user t2 ON t1.ext_char_8 = t2.drp_code
LEFT JOIN TM_CUSTOMER t3 ON t2.kunnr = t3.erp_code
LEFT JOIN TM_R_TERM_CUST_POS_BG t4 ON t4.CUSTOMER_ID = t3. ID
INNER JOIN TM_TERMINAL t5 ON t4.TERMINAL_ID = t5. ID
left JOIN tm_org t6 on t5.org_id=t6.id
left join tm_r_term_cust_pos_bg t7 on t5.id=t7.terminal_id
left join tm_customer t8 on t7.customer_id=t8.id
left join tm_position t9 on t9.id=t7.position_id
left join tm_r_user_position t10 on t9.id=t10.position_id
left join tm_user t11 on t10.user_id=t11.id
WHERE
	1 = 1
 AND T1.USERNAME='S000754'

and 
t6.org_code in
(
select distinct org_code from tm_org  start with org_code='0100' connect by  parent_id = prior id
)

select * from tm_drp_user
select * from tm_user where fullname='林文正';
select * from TM_R_TERM_CUST_POS_BG;
select * from tm_r_user_position where is_main=0;

select * from tm_user where user_tyo

select * from tm_user where user_type='2'

select * from tm_org where org_type='SYB'

select * from tm_org where org_code='010006350302'



select * from tm_customer

select * from tm_r_term_cust_pos_bg

select * from tm_position










select * from tt_prd_cost where unit='2'














