package com.bs.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.bs.bus.entity.Terms;
import com.bs.bus.service.ITermsService;
import com.bs.bus.vo.TermsVo;
import com.bs.sys.common.DataGridView;
import com.bs.sys.common.ResultObj;
import com.bs.sys.common.TreeNode;
import com.bs.sys.common.WebUtils;
import com.bs.sys.entity.Notice;
import com.bs.sys.entity.User;
import com.bs.sys.vo.NoticeVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author yl
 * @since 2020-04-26
 */
@RestController
@RequestMapping("/bus/terms")
public class TermsController {

    @Autowired
    private ITermsService termsService;

    //查出需要计算综测的学期
    @RequestMapping("submitterms")
    public DataGridView submitTerms(){
        List<Terms> list=termsService.list();
        List<TreeNode> treeNodes = new ArrayList<>();
        User user = (User) WebUtils.getSession().getAttribute("user");
        try{
            for(Terms term:list){
                if(Integer.parseInt(user.getLoginname().substring(0,4))<Integer.parseInt(term.getTerm().substring(0,4))&&Integer.parseInt(term.getTerm().substring(0,4))<Integer.parseInt(user.getLoginname().substring(0,4))+3){
                    treeNodes.add(new TreeNode(term.getId(),term.getTerm(),0));
                }
                if(term.getTerm().equals(user.getLoginname().substring(0,4)+"年秋")||term.getTerm().equals((Integer.parseInt(user.getLoginname().substring(0,4))+3)+"年春")){
                    treeNodes.add(new TreeNode(term.getId(),term.getTerm(),0));
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return new DataGridView(treeNodes);
    }

    @RequestMapping("addterm")
    public ResultObj addTerm(Terms terms){
        try {
            termsService.save(terms);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 删除学期
     * @param
     * @return
     */
    @RequestMapping("deleteterm")
    public ResultObj deleteTerm(Terms terms){
        try {
            termsService.removeById(terms);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除
     * @param
     * @return
     */
    @RequestMapping("batchDeleteterms")
    public ResultObj batchDeleteTerms(TermsVo termsVo){
        try {
            Collection<Serializable> idList = new ArrayList<>();
            for (Integer id : termsVo.getIds()) {
                idList.add(id);
            }
            termsService.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    @RequestMapping("loadAllterms")
    public DataGridView loadAllTerms(TermsVo termsVo){
        IPage<Terms> page = new Page<Terms>(termsVo.getPage(),termsVo.getLimit());
        QueryWrapper<Terms> queryWrapper = new QueryWrapper<Terms>();
        queryWrapper.orderByDesc("term");
        termsService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }






}

