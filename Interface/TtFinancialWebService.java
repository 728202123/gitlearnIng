package com.biz.eisp.tpm.webservice;

import com.alibaba.fastjson.JSONObject;
import com.biz.eisp.api.AbstractWebService;
import com.biz.eisp.api.jlb.sap.uitl.CrmParamsUtil;
import com.biz.eisp.base.common.util.CollectionUtil;
import com.biz.eisp.base.common.util.StringUtil;
import com.biz.eisp.tpm.budget.account.service.TtFinancialAccountService;
import com.biz.eisp.tpm.budget.account.vo.TtFinancialAccountVo;
import com.biz.eisp.tpm.managementCostAccount.entity.TtManagementCostAccountEntity;
import com.biz.eisp.tpm.managementCostAccount.itable.ManagementCostAccountITable;
import com.biz.eisp.tpm.managementCostAccount.service.TtManagementCostAccountService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * sap-webservice接口,根据erp编码获取-预算科目+费用科目
 */
@Component("ttFinancialWebService")
public class TtFinancialWebService extends AbstractWebService {
    /**
     * 注入预算科目Service
     */
    @Autowired
    private TtFinancialAccountService ttFinancialAccountService;
    /**
     * 注入
     */
    @Autowired
    private TtManagementCostAccountService ttManagementCostAccountService;

    @Override
    public JSONObject analysisWebService(JSONObject jsonObject) {
        List<ManagementCostAccountITable> itablelist;
        //获取SAP传过来的Json对象
        String erpCodeJson = jsonObject.getString("ITABLE");
        JSONObject resultJson = new JSONObject();
        //解析Json对象传入Json
        itablelist = (List<ManagementCostAccountITable>) com.alibaba.fastjson.JSONArray.parseArray(erpCodeJson, ManagementCostAccountITable.class);
        //创建集合对象用来装Map集合
        List<Map> list = new ArrayList();
        //定义Map1号集合对象装预算科目编码，名称，ERP编码
        Map<String, String> map1 = null;
        //定义Map2号集合对象装管理费用科目编码，名称，ERP编码
        Map<String, String> map2 = null;
        if (!CollectionUtils.isEmpty(itablelist)) {
            //定义flag1号逻辑判断标示
            Boolean flag1 = true;
            //定义flag2号逻辑判断标示
            Boolean flag2 = true;
            //遍历解析的Json对象
            for (ManagementCostAccountITable itable : itablelist) {
                try {
                    //创建Map1号对象循环添加预算科目值
                    map1 = new HashMap();
                    //创建Map2号对象循环添加管理费用科目管理值
                    map2 = new HashMap<>();
                    //查询预算科目
                    List<TtFinancialAccountVo> financialByErpCode = ttFinancialAccountService.getFinancialByErpCode(itable.getHKONT_K());
                    if (CollectionUtil.listNotEmptyNotSizeZero(financialByErpCode)) {
                        if (flag1) {
                            //判断ERP编码是否为空
                            if (StringUtils.isBlank(financialByErpCode.get(0).getFinancialCode())) {
                                map1.put("ERROR：", "预算科目ERP编码" + financialByErpCode.get(0).getFinancialCode() + "没查询到");
                                flag1 = false;
                            }
                            //判断ERP编码是否存在多个
                            if (financialByErpCode.size() > 1) {
                                map1.put("ERROR：", "预算科目ERP编码" + financialByErpCode.get(0).getFinancialCode() + "查询出多个");
                                flag1 = false;
                            }
                        }
                        if (flag1) {
                            //判断ERP编码是否为启用状态
                            if (financialByErpCode.get(0).getEnableStatus() == 0) {
                                map1.put("ZYSKM", financialByErpCode.get(0).getAccountCode());
                                map1.put("ZYSMS", financialByErpCode.get(0).getAccountName());
                                map1.put("HKONT", financialByErpCode.get(0).getFinancialCode());
                            } else {
                                map1.put("ERROR：", "预算科目管理传递的ERP编码" + financialByErpCode.get(0).getFinancialCode() + "为停用状态");
                                flag1 = false;
                            }
                        }
                    } else {
                        map1.put("ERROR：", "预算科目ERP编码没查询到");
                        flag1 = false;
                    }

                    if (!flag1) {
                        List<TtManagementCostAccountEntity> accountOrAccountName = ttManagementCostAccountService.getAccountOrAccountName(itable.getHKONT_K());
                        if (CollectionUtil.listNotEmptyNotSizeZero(accountOrAccountName)) {
                            if (flag2) {
                                if (StringUtils.isBlank(accountOrAccountName.get(0).getFinancialCode())) {
                                    map2.put("ERROR：", "管理费用科目ERP编码" + accountOrAccountName.get(0).getFinancialCode() + "没查询到");
                                    flag2 = false;
                                }
//                                else if (accountOrAccountName.size() > 1) {
//                                    map2.put("ERROR：", "管理费用科目ERP编码" + accountOrAccountName.get(0).getFinancialCode() + "查询出多个");
//                                    flag2 = false;
//                                }
                            }
                            if (flag2) {
                                if (accountOrAccountName.get(0).getEnableStatus() == 0) {
                                    map2.put("ZYSKM", accountOrAccountName.get(0).getAccountCode());
                                    map2.put("ZYSMS", accountOrAccountName.get(0).getAccountName());
                                    map2.put("HKONT", accountOrAccountName.get(0).getFinancialCode());
                                } else {
                                    map2.put("ERROR：", "管理费用科目管理传递的ERP编码" + accountOrAccountName.get(0).getFinancialCode() + "为停用状态");
                                    flag2 = false;
                                }
                            }
                        } else {
                            map2.put("ERROR：", "管理费用科目ERP编码没查询到");
                            flag2 = false;
                        }
                    }

                    //添加1号Map集合对象到List集合对象
                    if (flag1) {
                        list.add(map1);
                    }
                    //添加2号Map集合对象到List集合对象
                    if (flag2) {
                        list.add(map2);
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                    map1.put("Exception：", e.getMessage());
                    map2.put("Exception：", e.getMessage());
                }
            }
            if (!flag1 && !flag2) {
                if (StringUtil.isNotEmpty(list)) {
                    map1.put("ERROR：", "预算科目和管理费用科目管理都没查询到！");
                    list.add(map1);
                }

            }
        }

        //拼接Json字符串，为长度18位的随机数
        String ZCH = CrmParamsUtil.getRandomString("Z_CRM_HKONT" + ":C", 18);

        resultJson.put("CONTENT", ZCH);
        resultJson.put("ITABLE", list);
        //返回Json
        return resultJson;
    }


}


