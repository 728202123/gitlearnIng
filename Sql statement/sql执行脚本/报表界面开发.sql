select
t1.ID as id,
t1.ORIG_CUS_CODE as origCusCode,
t1.ORIG_CUS_NAME as origCusName,
t1.NEW_CUS_NAME as newCusName,
t1.NEW_CUS_CODE as newCusCode,
t1.STATUS as status,
t1.ORIG_CUS_TESK as origCusTesk,
t1.ORIG_CUS_SALES as origCusSales,
t1.CREATE_NAME as createName,
t1.CREATE_DATE as createDate,
t1.UPDATE_NAME as updateName,
t1.UPDATE_DATE as updateDate, 
(select min(t2.BILL_DATE)  from "/BIC/OHZ_0HD_02" t2 where t2.SOLD_TO=t1.NEW_CUS_CODE ) as newCusSAPDate
FROM TT_CUS_CHANGE t1
WHERE 1=1


where t2.SOLD_TO=t1.NEW_CUS_CODE group by newCusSAPDate
