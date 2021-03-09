package com.bs.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.bs.bus.common.ScoreExcelParse;
import com.bs.bus.entity.Basicscore;
import com.bs.bus.service.IBasicscoreService;
import com.bs.bus.vo.BasicscoreVo;
import com.bs.sys.common.AppFileUtils;
import com.bs.sys.common.DataGridView;
import com.bs.sys.common.ResultObj;
import com.bs.sys.common.WebUtils;
import com.bs.sys.common.excel.StringUtil;
import com.bs.sys.entity.Dept;
import com.bs.sys.entity.User;
import com.bs.sys.service.IDeptService;
import com.bs.sys.service.IRoleService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.io.Serializable;
import java.util.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author yl
 * @since 2020-04-25
 */
@RestController
@RequestMapping("/bus/basicscore")
public class BasicscoreController {

    @Autowired
    private IBasicscoreService basicscoreService;

    @Autowired
    private IDeptService deptService;

    @Autowired
    private IRoleService roleService;

    @RequestMapping("loadbasicscore")
    public DataGridView loadAllScore(BasicscoreVo basicscoreVo){
        //从缓存获取登录用户
        User user = (User) WebUtils.getSession().getAttribute("user");
        //写不同登录用户角色能查看的数据
        List<Integer> roleids=roleService.queryUserRoleIdsByUid(user.getId());
        IPage<Basicscore> page = new Page<Basicscore>(basicscoreVo.getPage(),basicscoreVo.getLimit());
        QueryWrapper<Basicscore> queryWrapper = new QueryWrapper<Basicscore>();
        String Maxrole="";
        for(Integer roleid:roleids){
            if(roleService.getById(roleid).getName().equals("超级管理员")){
                Maxrole="超级管理员";
            }
            if(!Maxrole.equals("超级管理员")&&roleService.getById(roleid).getName().equals("老师")){
                Maxrole="老师";
            }
            if(!Maxrole.equals("超级管理员")&&!Maxrole.equals("老师")){
                Maxrole="学生";
            }
        }
        if(Maxrole.equals("超级管理员")||Maxrole.equals("老师")){
            //进行模糊查询
            queryWrapper.like(StringUtils.isNotBlank(basicscoreVo.getUsername()),"username",basicscoreVo.getUsername());
            queryWrapper.eq(StringUtil.isNotEmpty(basicscoreVo.getQualify()),"qualify",basicscoreVo.getQualify());
            if(basicscoreVo.getDeptid()==null||basicscoreVo.getDeptid()==1){
                queryWrapper.like("deptid","");
            }
            else {
                queryWrapper.like(StringUtils.isNotBlank(deptService.getById(basicscoreVo.getDeptid()).getName()),"deptname",deptService.getById(basicscoreVo.getDeptid()).getName());
            }

            queryWrapper.orderByAsc("rank");
            basicscoreService.page(page,queryWrapper);
        }
        if(Maxrole.equals("学生")){
            queryWrapper.eq("pdeptid",basicscoreService.getOne(new QueryWrapper<Basicscore>().eq("userid",user.getLoginname())).getPdeptid());
            queryWrapper.eq(StringUtil.isNotEmpty(basicscoreVo.getQualify()),"qualify",basicscoreVo.getQualify());
            queryWrapper.like(StringUtils.isNotBlank(basicscoreVo.getUsername()),"username",basicscoreVo.getUsername());
            basicscoreService.page(page,queryWrapper);
        }
        return new DataGridView(page.getTotal(),page.getRecords());

    }

    @RequestMapping("exceltoScore")
    public ResultObj excelToScore(String excelpath){
        try {
            List<Basicscore> list= new ScoreExcelParse().ExceltoScore((new File(AppFileUtils.UPLOAD_PATH+"/"+excelpath)));
            QueryWrapper<Dept> deptQueryWrapper=null;
            QueryWrapper<Basicscore> basicscoreQueryWrapper=null;
            for(Basicscore basicscore:list){
                deptQueryWrapper=new QueryWrapper<Dept>();
                deptQueryWrapper.eq("name",basicscore.getDeptname());
                basicscore.setDeptid(deptService.getOne(deptQueryWrapper).getId());
                deptQueryWrapper=new QueryWrapper<Dept>();
                deptQueryWrapper.eq("name",basicscore.getPdeptname());
                basicscore.setPdeptid(deptService.getOne(deptQueryWrapper).getId());
                basicscoreQueryWrapper=new QueryWrapper<Basicscore>();
                basicscoreQueryWrapper.eq("userid",basicscore.getUserid());
                if(basicscoreService.getOne(basicscoreQueryWrapper)!=null){
                    basicscore.setId(basicscoreService.getOne(basicscoreQueryWrapper).getId());
                    basicscoreService.updateById(basicscore);
                }else {
                    basicscoreService.save(basicscore);
                }
            }
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    //删除成绩
    @RequestMapping("delectscore")
    public ResultObj delectScore(BasicscoreVo basicscoreVo){
        try {
            basicscoreService.removeById(basicscoreVo);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除成绩
     * @param
     * @return
     */
    @RequestMapping("batchdelectscore")
    public ResultObj batchDeleteScore(BasicscoreVo basicscoreVo){
        try {
            Collection<Serializable> idList = new ArrayList<>();
            for (Integer id : basicscoreVo.getIds()) {
                idList.add(id);
            }
            basicscoreService.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /*
    判断是否有竞争资格
     */
    @RequestMapping("hasqualify")
    public Map<String,Object> hasQualify(){
        Map<String,Object> map=new HashMap<>();
        //从缓存获取登录用户
        User user = (User) WebUtils.getSession().getAttribute("user");
        map.put("qualify",WebUtils.getSession().getAttribute("qualify"));
        map.put("user",user);
        return map;
    }


}

