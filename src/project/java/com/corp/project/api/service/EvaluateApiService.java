package com.corp.project.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corp.project.dao.EvaluateDao;
import com.corp.project.dao.po.EvaluatePO;

import aos.framework.core.dao.SqlDao;
import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;

@Service("evaluateApiService")
public class EvaluateApiService {

    @Autowired
    private SqlDao sqlDao;
    @Autowired
    private EvaluateDao evaluateDao;

    /**
     * 发布评价
     * 
     * @param evaluatePO
     * @return
     */
    @Transactional
    public boolean insert(EvaluatePO evaluatePO) {
        Integer count = evaluateDao.insert(evaluatePO);
        return count == 0 ? false : true;
    }

    /**
     * 查询商品的最近评价
     * 
     * @param pid
     * @return
     */
    public List<Dto> getAllEvaluateByPid(Integer pid) {
        return sqlDao.list("EvaluateDao.queryAllEvaluates", Dtos.newDto("pid", pid));
    }
}
