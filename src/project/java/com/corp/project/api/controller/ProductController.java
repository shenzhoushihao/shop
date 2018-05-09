package com.corp.project.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.corp.project.api.service.ProductService;
import com.corp.project.dao.po.ProductPO;
import com.corp.project.util.ResultPO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSUtils;
import aos.framework.web.router.HttpModel;
import aos.system.common.model.UserModel;
import aos.system.modules.cache.CacheUserDataService;

@RestController
@RequestMapping(value = "/api/product")
public class ProductController {

    @Autowired
    private CacheUserDataService cacheUserDataService;
    @Autowired
    private ProductService productService;

    /**
     * 查询商品列表
     * 
     * @param pageNum
     * @param price
     * @param type
     * @param pname
     * @param order
     * @return
     */
    @RequestMapping(value = "/listProduct", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO listProduct(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "price", required = false) Integer price,
            @RequestParam(value = "type", required = false) String type,
            @RequestParam(value = "pname", required = false) String pname,
            @RequestParam(value = "order", required = false) String order) {

        Dto newDto = Dtos.newDto("price", price);
        if (AOSUtils.isNotEmpty(type)) {
            newDto.put("type", type);
        }
        if (AOSUtils.isNotEmpty(pname)) {
            newDto.put("pname", pname);
        }
        if (AOSUtils.isNotEmpty(order)) {
            newDto.put("order", order);
        }

        Integer pageSize = 9;
        PageHelper.startPage(pageNum, pageSize);
        List<ProductPO> listProduct = productService.listProduct(newDto);
        PageInfo<ProductPO> pageInfo = new PageInfo<>(listProduct);
        return ResultPO.success().add("pageInfo", pageInfo).add("product", listProduct);
    }

    /**
     * 查询最新商品
     * 
     * @param pageNum
     * @return
     */
    @RequestMapping(value = "/listNewProducts", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO listNewProducts(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum) {

        Integer pageSize = 9;
        PageHelper.startPage(pageNum, pageSize);
        List<Dto> listProduct = productService.listNewProduct();
        PageInfo<Dto> pageInfo = new PageInfo<>(listProduct);
        return ResultPO.success().add("pageInfo", pageInfo).add("product", listProduct);
    }

    /**
     * 查询我的商品
     * 
     * @param juid
     * @return
     */
    @RequestMapping(value = "/getMyProduct", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO getMyProduct(@RequestParam(value = "juid") String juid,
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum) {

        UserModel userModel = cacheUserDataService.getUserModel(juid);

        Integer pageSize = 12;
        PageHelper.startPage(pageNum, pageSize, "createdtime DESC");
        List<ProductPO> listProduct = productService.findProductByUid(userModel.getId());
        PageInfo<ProductPO> pageInfo = new PageInfo<>(listProduct);
        return ResultPO.success().add("pageInfo", pageInfo).add("product", listProduct);
    }

    /**
     * 发布我的商品
     * 
     * @param productPO
     * @return
     */
    @RequestMapping(value = "/insertMyProduct", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO insertMyProduct(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        String juid = httpModel.getInDto().getString("juid");
        UserModel userModel = cacheUserDataService.getUserModel(juid);

        boolean flag = true;
        flag = productService.insert(httpModel, userModel);
        if (flag) {
            return ResultPO.success().add("msg", "发布成功！");
        }
        return ResultPO.fail().add("msg", "发布失败！");
    }

    /**
     * 删除我的商品
     * 
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteMyProduct", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO deleteMyProduct(@RequestParam(value = "id") Integer id) {

        boolean flag = true;
        flag = productService.deleteMyProduct(id);
        if (flag) {
            return ResultPO.success().add("msg", "移除成功！");
        }
        return ResultPO.fail().add("msg", "移除失败！");
    }


    /**
     * 商品上下架
     * 
     * @param id
     * @param status
     * @return
     */
    @RequestMapping(value = "/updateMyProduct", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO updateMyProduct(@RequestParam(value = "id") Integer id,
            @RequestParam(value = "status") String status) {

        boolean flag = true;
        flag = productService.updateProductByKey(id, status);
        if (flag) {
            return ResultPO.success().add("msg", "状态修改成功！");
        }
        return ResultPO.fail().add("msg", "状态修改失败！");
    }

    /**
     * 查询商品详细
     * 
     * @param id
     * @param status
     * @return
     */
    @RequestMapping(value = "/queryProductDetail/{product_id}", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO queryProductDetail(@PathVariable String product_id) {
        Dto queryDto = productService.queryProductDetail(Dtos.newDto("id", product_id));
        return ResultPO.success().add("product", queryDto);
    }

    /**
     * 收藏商品
     * 
     * @param id
     * @param status
     * @return
     */
    @RequestMapping(value = "/collectProduct/{product_id}/{juid}", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO collectProduct(@PathVariable Integer product_id, @PathVariable String juid,
            @RequestParam(value = "ppname") String ppname) {
        UserModel userModel = cacheUserDataService.getUserModel(juid);
        if (AOSUtils.isEmpty(userModel)) {
            return ResultPO.fail().add("msg", "收藏" + ppname + "失败！您还没有登录！");
        }
        boolean flag = true;
        flag = productService.collectProduct(product_id, userModel.getId(), 1);
        if (flag) {
            return ResultPO.success().add("msg", "收藏" + ppname + "成功！");
        } else {
            return ResultPO.fail().add("msg", "收藏" + ppname + "失败！");
        }
    }

    /**
     * 获取收藏列表
     * 
     * @param pageNum
     * @param juid
     * @return
     */
    @RequestMapping(value = "/getCollectList", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO getCollectList(
            @RequestParam(value = "pageNUm", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "juid") String juid) {
        UserModel userModel = cacheUserDataService.getUserModel(juid);
        PageHelper.startPage(pageNum, 12, "createdtime DESC");
        List<Dto> list = productService.getCollectList(userModel.getId());
        PageInfo<Dto> pageInfo = new PageInfo<>(list);
        return ResultPO.success().add("pageInfo", pageInfo);
    }

    @RequestMapping(value = "/deleteCollect", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO deleteCollect(@RequestParam(value = "pid") Integer pid) {
        boolean index = true;
        index = productService.deleteCollect(pid);
        if (index) {
            return ResultPO.success().add("msg", "移除成功！");
        } else {
            return ResultPO.fail().add("msg", "移除失败！");
        }
    }
}
