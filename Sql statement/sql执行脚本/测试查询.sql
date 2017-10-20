


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
  t12.ORG_CODE as orgCode,
  t12.ORG_NAME as orgName,
  t12.ORG_TYPE as orgType,
  t8.customer_name as customerName,
  t8.customer_code as customerCode,
  t9.position_code as positionCode,
  t9.position_name as positionName,
  t11.FULLNAME as fullname
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
left JOIN tm_org t12 on t12.id=t8.org_id
WHERE
  1 = 1
  AND T1.USERNAME='S005309'

and
  t12.org_code in
  (
  select org_code from tm_org  start with org_code='0102' connect by parent_id = prior id
  )


 select org_code from tm_org  start with org_code='0102031004' connect by parent_id = prior id
 

select * from tm_org
select * from tm_customer
  select * from tm_user where User_Type='2'
  
  
  select listagg('职位名称',',') within group (order by 工作流角色编码) as 爱思 from "imp1"
  
  
  select listagg(org_name,',') within group(order by org_code) as ssss from tm_org
  
  
  SELECT listagg(notice_name,'~~~') within GROUP (ORDER BY notice_name )as name FROM DMS_NOTICE
  
  
  
  select * from tm_org where org_code='0102032305'
  
    select * from tm_org where org_code='0101050202'
    
    
 select * from tm_org where org_code='0102032305'  start with org_code='0102' connect by parent_id = prior id
 
 
 select * from tm_org where org_type='SYB'
 
姐弟俩土豆粉
