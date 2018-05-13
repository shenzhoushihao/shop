package com.corp.project.httpback.dao;

import java.util.List;

import aos.framework.core.annotation.Dao;
import aos.framework.core.typewrap.Dto;

@Dao("bannerHttpRepository")
public interface BannerHttpRepository {

    /**
     * 获取商品列表
     * 
     * @return
     */
    List<Dto> getProductList();

    /**
     * 获取广告列表
     * 
     * @param pDto
     * @return
     */
    List<Dto> getADList(Dto pDto);
}
