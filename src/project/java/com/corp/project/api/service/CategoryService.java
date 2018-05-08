package com.corp.project.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.corp.project.dao.CategoryDao;
import com.corp.project.dao.po.CategoryPO;
import com.github.pagehelper.PageHelper;

@Service("categoryService")
public class CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    /**
     * 查询菜单分类
     * 
     * @param httpModel
     * @return
     */
    public List<CategoryPO> listCategory() {
        PageHelper.orderBy("id");
        return categoryDao.list(null);
    }
}
