package com.corp.project.httpback.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corp.project.dao.AdbannersDao;
import com.corp.project.dao.po.AdbannersPO;
import com.corp.project.httpback.dao.BannerHttpRepository;
import com.corp.project.util.MultiFileUpload;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSJson;
import aos.framework.core.utils.AOSUtils;
import aos.framework.web.router.HttpModel;

@Service("bannerHttpService")
public class BannerHttpService {

    @Autowired
    private AdbannersDao adbannersDao;
    @Autowired
    private BannerHttpRepository bannerHttpRepository;

    /**
     *  初始化(跳转页面)
     * 
     * @param httpModel
     * @return
     */
    public void init(HttpModel httpModel) {
        httpModel.setAttribute("juid", httpModel.getInDto().getString("juid"));
        httpModel.setViewPath("system/ab.jsp");
    }

    /**
     * 查询广告列表
     * 
     * @param httpModel
     */
    public void listPage(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        List<Dto> list = bannerHttpRepository.getADList(inDto);
        httpModel.setOutMsg(AOSJson.toGridJson(list, inDto.getPageTotal()));
    }

    /**
     * 修改广告信息
     * 
     * @param httpModel
     */
    @Transactional
    public void updateAD(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        inDto.println();
        AdbannersPO adbannersPO = new AdbannersPO();
        adbannersPO.copyProperties(inDto);
        // 查询以前的图片
        AdbannersPO banner = adbannersDao.selectByKey(adbannersPO.getId());
        if (AOSUtils.isNotEmpty(banner.getImgsrc())) {
            MultiFileUpload.deleteFile(banner.getImgsrc(), "b");
            Map<String, Object> map = MultiFileUpload.fileUpLoad(httpModel.getRequest(), "b");

            if (AOSUtils.isNotEmpty(map.get("imgsrc"))) {
                adbannersPO.setImgsrc(map.get("imgsrc").toString());
            }
        }

        adbannersDao.updateByKey(adbannersPO);
        httpModel.setAttribute("juid", httpModel.getUserModel().getJuid());
        httpModel.setOutMsg("修改成功！");
    }

    /**
     * 获取商品列表
     * 
     * @param httpModel
     * @return
     */
    public void getProductList(HttpModel httpModel) {
        List<Dto> list = bannerHttpRepository.getProductList();
        httpModel.setOutMsg(AOSJson.toJson(list));
    }
}
