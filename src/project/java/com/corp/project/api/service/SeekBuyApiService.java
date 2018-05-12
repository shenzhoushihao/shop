package com.corp.project.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corp.project.dao.SeekbuyDao;
import com.corp.project.dao.po.SeekbuyPO;

import aos.framework.core.dao.SqlDao;
import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSUtils;

@Service("seekBuyApiService")
public class SeekBuyApiService {

    @Autowired
    private SqlDao sqlDao;
    @Autowired
    private SeekbuyDao seekbuyDao;

    /**
     * 发布需求
     * 
     * @param seekbuyPO
     * @return
     */
    @Transactional
    public boolean insert(SeekbuyPO seekbuyPO) {
        Integer count = 0;
        seekbuyPO.setCreatedtime(AOSUtils.getDateTime());
        count = seekbuyDao.insert(seekbuyPO);
        return count == 0 ? false : true;
    }

    /**
     * 查询自己的需求
     * 
     * @param uid
     * @return
     */
    public List<SeekbuyPO> findSeekByUid(Integer uid) {
        return seekbuyDao.list(Dtos.newDto("uid", uid));
    }

    /**
     * 查询所有需求
     * 
     * @param qDto
     * @return
     */
    public List<Dto> selectAllSeek(Dto qDto) {
        return sqlDao.list("SeekbuyDao.queryAllSeeks", qDto);
    }

    /**
     * 删除需求
     * 
     * @param bid
     * @return
     */
    @Transactional
    public boolean deleteSeek(Integer bid) {
        Integer flag = 0;
        flag = seekbuyDao.deleteByKey(bid);
        return flag == 0 ? false : true;
    }

    /**
     * 编辑需求
     * 
     * @param qDto
     * @return
     */
    @Transactional
    public boolean updateSeek(Dto qDto) {
        SeekbuyPO seekbuyPO = new SeekbuyPO();
        seekbuyPO.copyProperties(qDto);
        seekbuyPO.setCreatedtime(AOSUtils.getDateTime());
        Integer flag = 0;
        flag = seekbuyDao.updateByKey(seekbuyPO);
        return flag == 0 ? false : true;
    }
}
