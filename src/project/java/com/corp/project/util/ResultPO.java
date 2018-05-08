package com.corp.project.util;

import java.util.*;

/**
 * 对于结果集的封装
 */
public class ResultPO {

    private boolean result;
    private String msg;
    private Map<String, Object> map = new HashMap<String, Object>();

    private ResultPO() {}

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    /**
     * 返回成功消息
     */
    public static ResultPO success() {
        ResultPO resultPO = new ResultPO();
        resultPO.setResult(true);
        resultPO.setMsg("success");
        return resultPO;
    }

    /**
     * 返回失败消息
     */
    public static ResultPO fail() {
        ResultPO resultPO = new ResultPO();
        resultPO.setResult(false);
        resultPO.setMsg("fail");
        return resultPO;
    }

    /**
     * 添加结果
     */
    public ResultPO add(String key, Object value) {
        this.getMap().put(key, value);
        return this;
    }

    /**
     * 批量添加结果
     */
    public ResultPO addAll(Map<String, String> map) {
        this.getMap().putAll(map);
        return this;
    }

}
