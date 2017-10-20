CREATE TABLE TT_COMMODITY_COEFFICIENT(
id VARCHAR2(100 byte) not null,
business_unit_code VARCHAR2 (100 byte) null,
business_unit_name VARCHAR2 (100 byte) null,
year_month VARCHAR2 (100 byte) null,
coefficient NUMBER(10,2) null,
create_name VARCHAR2 (100 byte) null,
create_date TIMESTAMP(6) null,
update_name VARCHAR2 (100 byte) null,
update_date TIMESTAMP(6) null
);
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.id is '逻辑主键';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.business_unit_code is '事业部编码';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.business_unit_name is '事业部名称';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.year_month is '年月';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.coefficient is '系数,保留两位小数';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.create_name is '创建人';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.create_date is '创建时间';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.update_name is '最近更新人';
COMMENT ON COLUMN TT_COMMODITY_COEFFICIENT.update_date is '最近更新时间';