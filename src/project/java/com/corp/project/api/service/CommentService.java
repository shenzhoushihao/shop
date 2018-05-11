package com.corp.project.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corp.project.dao.CommentsDao;
import com.corp.project.dao.po.CommentsPO;

import aos.framework.core.dao.SqlDao;
import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;

@Service("commentService")
public class CommentService {

    @Autowired
    private SqlDao sqlDao;
    @Autowired
    private CommentsDao commentsDao;

    /**
     * 发布留言
     * 
     * @param commentsPO
     * @return
     */
    @Transactional
    public boolean insert(CommentsPO commentsPO) {
        Integer count = commentsDao.insert(commentsPO);
        return count == 0 ? false : true;
    }

    /**
     * 根据sid查询留言
     * 
     * @param sid
     * @return
     */
    public List<Dto> getAllCommentsByCid(Integer sid) {
        return sqlDao.list("CommentsDao.queryAllCommentsBySid", Dtos.newDto("sid", sid));
    }

}
