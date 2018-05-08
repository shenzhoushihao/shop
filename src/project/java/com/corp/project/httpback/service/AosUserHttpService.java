package com.corp.project.httpback.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corp.project.httpback.dao.UserRepository;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSCodec;
import aos.framework.core.utils.AOSJson;
import aos.framework.core.utils.AOSUtils;
import aos.framework.dao.AosUserDao;
import aos.framework.dao.po.AosUserPO;
import aos.framework.web.router.HttpModel;

@Service("aosUserHttpService")
public class AosUserHttpService {

    @Autowired
    private AosUserDao aosUserDao;
    @Autowired
    private UserRepository userRepository;

    /**
     *  初始化(跳转页面)
     * 
     * @param httpModel
     * @return
     */
    public void init(HttpModel httpModel) {
        httpModel.setAttribute("juid", httpModel.getInDto().getString("juid"));
        httpModel.setViewPath("system/user.jsp");
    }

    /**
     * 查询用户列表
     * 
     * @param httpModel
     */
    public void listPage(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        List<Dto> list = userRepository.listPage(inDto);
        httpModel.setOutMsg(AOSJson.toGridJson(list, inDto.getPageTotal()));
    }

    /**
     * 新增用户信息
     * 
     * @param httpModel
     */
    @Transactional
    public void saveUser(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        inDto.put("password", AOSCodec.password(inDto.getString("password")));
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.copyProperties(inDto);
        aosUserPO.setStatus("1");
        aosUserPO.setIs_del("0");
        aosUserPO.setCreatedtime(AOSUtils.getDate());
        aosUserDao.insert(aosUserPO);
        httpModel.setOutMsg("用户新增成功！");
    }

    /**
     * 修改用户信息
     * 
     * @param httpModel
     */
    @Transactional
    public void updateUser(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.copyProperties(inDto);
        aosUserDao.updateByKey(aosUserPO);
        httpModel.setOutMsg("用户修改成功！");
    }

    /**
     * 批量删除信息
     * 
     * @param httpModel
     */
    @Transactional
    public void delUser(HttpModel httpModel) {
        String[] selectionIds = httpModel.getInDto().getRows();
        for (String id : selectionIds) {
            aosUserDao.deleteByKey(Integer.valueOf(id));
        }
        httpModel.setOutMsg("批量删除用户数据成功。");
    }

    /**
     * 停用账号信息
     * 
     * @param httpModel
     */
    @Transactional
    public void disconnectUser(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.setId(inDto.getInteger("id"));
        String msg = "";
        if (inDto.getString("status").equalsIgnoreCase("1")) {
            aosUserPO.setStatus("3");
            msg = "该账户已经被停用。";
        } else {
            aosUserPO.setStatus("1");
            msg = "该账户已经被恢复。";
        }
        aosUserDao.updateByKey(aosUserPO);
        httpModel.setOutMsg(msg);
    }

    /**
     * 逻辑删除信息
     * 
     * @param httpModel
     */
    @Transactional
    public void deleteUser(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.setId(inDto.getInteger("id"));
        String msg = "";
        if (inDto.getString("is_del").equalsIgnoreCase("1")) {
            aosUserPO.setIs_del("0");
            msg = "该账户已经被找回。";
        } else {
            aosUserPO.setIs_del("1");
            msg = "该账户已经被删除。";
        }
        aosUserDao.updateByKey(aosUserPO);
        httpModel.setOutMsg(msg);
    }

    /**
     * 查询学院列表
     */
    public void getColleges(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        List<Dto> list = userRepository.listCollegeCombox(inDto);
        httpModel.setOutMsg(AOSJson.toJson(list));
    }
}
