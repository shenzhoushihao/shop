package com.corp.project.api.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corp.project.dao.CollectDao;
import com.corp.project.dao.ProductDao;
import com.corp.project.dao.po.CollectPO;
import com.corp.project.dao.po.ProductPO;
import com.corp.project.util.MultiFileUpload;

import aos.framework.core.dao.SqlDao;
import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSUtils;
import aos.framework.web.router.HttpModel;
import aos.system.common.model.UserModel;

@Service("productService")
public class ProductService {

    @Autowired
    private SqlDao sqlDao;
    @Autowired
    private CollectDao collectDao;
    @Autowired
    private ProductDao ProductDao;

    /**
     * 查询所有商品
     * 
     * @param newDto
     * @return
     */
    public List<ProductPO> listProduct(Dto newDto) {
        return sqlDao.list("ProductDao.queryProductlist", newDto);
    }

    /**
     * 查询最新商品
     * 
     * @param newDto
     * @return
     */
    public List<Dto> listNewProduct() {
        return sqlDao.list("ProductDao.queryNewProductlist", null);
    }

    /**
     * 查询我的商品
     * 
     * @param uid
     * @return
     */
    public List<ProductPO> findProductByUid(Integer uid) {
        return ProductDao.list(Dtos.newDto("uid", uid));
    }

    /**
     * 查询商品详细
     * 
     * @param newDto
     * @return
     */
    public Dto queryProductDetail(Dto inDto) {
        return (Dto) sqlDao.selectOne("ProductDao.queryProductDetail", inDto);
    }


    /**
     * 查询商品收藏
     * 
     * @param uid
     * @return
     */
    public List<Dto> getCollectList(Integer uid) {
        return sqlDao.list("ProductDao.querycollectDetail", Dtos.newDto("uid", uid));
    }


    /**
     * 发布商品
     * 
     * @param productPO
     * @return
     */
    @Transactional
    public boolean insert(HttpModel httpModel, UserModel userModel) {
        Integer count = 0;
        Dto inDto = httpModel.getInDto();
        ProductPO productPO = new ProductPO();
        productPO.copyProperties(inDto);

        productPO.setUser_id(userModel.getId());
        productPO.setCreatedtime(AOSUtils.getDate());
        if (productPO.getStatus().equals("1")) {
            productPO.setUpdatedtime(AOSUtils.getDate());
        }
        // 上传图片
        productPO.setImgsrc(null);
        try {
            Map<String, Object> map = MultiFileUpload.fileUpLoad(httpModel.getRequest());
            if (AOSUtils.isNotEmpty(map)) {
                productPO.setImgsrc(map.get("imgsrc").toString());
            } else {
                return false;
            }
        } catch (Exception e) {
            e.getMessage();
            return false;
        }
        count = ProductDao.insert(productPO);
        if (count == 0) {
            return false;
        }
        return true;
    }

    /**
     * 删除我的商品
     * 
     * @param id
     * @return
     */
    @Transactional
    public boolean deleteMyProduct(Integer id) {
        ProductPO productPO = ProductDao.selectByKey(id);
        Integer flag = 0;
        try {
            MultiFileUpload.deleteFile(productPO.getImgsrc());
            flag = ProductDao.deleteByKey(id);
        } catch (Exception e) {
            e.getMessage();
            return false;
        }
        return flag == 0 ? false : true;
    }

    /**
     * 商品上下架
     * 
     * @param id
     * @return
     */
    @Transactional
    public boolean updateProductByKey(Integer id, String status) {
        ProductPO productPO = new ProductPO();
        productPO.setId(id);
        productPO.setStatus(status);
        Integer flag = 0;
        flag = ProductDao.updateByKey(productPO);
        return flag == 0 ? false : true;
    }

    /**
     * 收藏商品
     * 
     * @param product_id
     * @param uid
     * @return
     */
    @Transactional
    public boolean collectProduct(Integer product_id, Integer uid, Integer num) {
        Integer f1 = 0;
        Dto pDto = Dtos.newDto("pid", product_id);
        pDto.put("uid", uid);
        CollectPO selectOne = collectDao.selectOne(pDto);
        if (AOSUtils.isNotEmpty(selectOne)) {
            selectOne.setCreatedtime(AOSUtils.getDate());
            selectOne.setNum(selectOne.getNum() + num);
            f1 = collectDao.updateByKey(selectOne);
        } else {
            CollectPO collectPO = new CollectPO();
            collectPO.setPid(product_id);
            collectPO.setUid(uid);
            collectPO.setNum(num);
            collectPO.setCreatedtime(AOSUtils.getDate());
            f1 = collectDao.insert(collectPO);
        }
        return f1 == 0 ? false : true;
    }

    /**
     * 删除收藏
     * 
     * @param id
     * @return
     */
    @Transactional
    public boolean deleteCollect(Integer id) {
        Integer num = 0;
        num = collectDao.deleteByKey(id);
        return num == 0 ? false : true;
    }
}
