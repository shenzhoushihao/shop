package com.corp.project.api.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.corp.project.dao.AdbannersDao;
import com.corp.project.dao.CategoryDao;
import com.corp.project.dao.PricetypeDao;
import com.corp.project.dao.po.AdbannersPO;
import com.corp.project.dao.po.CategoryPO;
import com.corp.project.dao.po.PricetypePO;

import aos.framework.core.typewrap.Dto;
import aos.framework.web.router.HttpModel;
import aos.system.dao.AosOrgDao;
import aos.system.dao.po.AosOrgPO;

@Service(value = "baseDataService")
public class BaseDataService {

    @Autowired
    private AosOrgDao aosOrgDao;
    @Autowired
    private CategoryDao categoryDao;
    @Autowired
    private PricetypeDao pricetypeDao;
    @Autowired
    private AdbannersDao adbannersDao;

    /**
     * 获取种类列表
     */
    public List<CategoryPO> getCategory(HttpModel httpModel) {
        Dto pDto = httpModel.getInDto();
        pDto.setOrder("id");
        List<CategoryPO> list = categoryDao.list(pDto);
        return list;
    }

    /**
     * 获取价格列表
     */
    public List<PricetypePO> getPriceType(HttpModel httpModel) {
        Dto pDto = httpModel.getInDto();
        pDto.setOrder("id");
        List<PricetypePO> list = pricetypeDao.list(pDto);
        return list;
    }

    /**
     * 获取广告条幅
     * 
     * @param httpModel
     * @return
     */
    public List<AdbannersPO> getBanners(HttpModel httpModel) {
        Dto pDto = httpModel.getInDto();
        pDto.setOrder("id");
        List<AdbannersPO> list = adbannersDao.list(pDto);
        return list;
    }

    /**
     * 获取学院列表
     * 
     * @param httpModel
     * @return
     */
    public List<AosOrgPO> getColleges(HttpModel httpModel) {
        Dto pDto = httpModel.getInDto();
        List<AosOrgPO> list = new ArrayList<>();
        list = aosOrgDao.list(pDto);
        return list;
    }

    /**
     * 根据主键学院名称
     * 
     * @param httpModel
     * @return
     */
    public AosOrgPO getOnlyCollege(Integer college_id) {
        AosOrgPO aosOrgPO = new AosOrgPO();
        aosOrgPO = aosOrgDao.selectByKey(college_id);
        return aosOrgPO;
    }
}
