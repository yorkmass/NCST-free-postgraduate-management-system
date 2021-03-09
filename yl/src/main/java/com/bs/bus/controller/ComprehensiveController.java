package com.bs.bus.controller;


import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.bs.bus.entity.Comprehensive;
import com.bs.bus.service.IComprehensiveService;
import com.bs.bus.vo.ComprehensiveVo;
import com.bs.sys.common.Constast;
import com.bs.sys.common.DataGridView;
import com.bs.sys.common.ResultObj;
import com.bs.sys.common.WebUtils;
import com.bs.sys.common.excel.StringUtil;
import com.bs.sys.entity.Notice;
import com.bs.sys.entity.User;
import com.bs.sys.service.IDeptService;
import com.bs.sys.vo.NoticeVo;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author yl
 * @since 2020-04-26
 */
@RestController
@RequestMapping("/bus/comprehensive")
public class ComprehensiveController {

    @Autowired
    private IComprehensiveService comprehensiveService;

    @Autowired
    private IDeptService deptService;

    @RequestMapping("savefile")
    public ResultObj saveFile(Comprehensive comprehensive){
        try {
            User user = (User) WebUtils.getSession().getAttribute("user");
            comprehensive.setDeptid(user.getDeptid());
            comprehensive.setUserid(user.getLoginname());
            comprehensive.setUsername(user.getName());
            comprehensive.setSubmittime(new Date());
            comprehensive.setJstatus("待审核");
            comprehensive.setDeptname(deptService.getById(user.getDeptid()).getName());
            comprehensiveService.save(comprehensive);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    //load当前用户所有的文件
    @RequestMapping("loadallfiles")
    public DataGridView loadAllFiles(ComprehensiveVo comprehensiveVo){
        //新建一个分页对象
        IPage<Comprehensive> page = new Page<Comprehensive>(comprehensiveVo.getPage(),comprehensiveVo.getLimit());
        //创建一个查询条件
        QueryWrapper<Comprehensive> queryWrapper = new QueryWrapper<Comprehensive>();
        //从session里面取出当前用户信息
        User user = (User) WebUtils.getSession().getAttribute("user");
        //设置查询条件，eq方法为完全匹配，like方法为模糊查询
        queryWrapper.eq("userid",user.getLoginname());
        //根据创建时间进行排序
        queryWrapper.orderByDesc("submittime");
        //通过serviec操作数据库，根据querywrapper设置的查询条件，查询数据，查询到的所有信息存入分页对象中，取出查询到的数据使用page.getRecords()；得到查询到的数据条数page.getTotal()；
        comprehensiveService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    /**
     * 删除文件
     * @param
     * @return
     */
    @RequestMapping("deleteFile")
    public ResultObj deleteFile(ComprehensiveVo comprehensiveVo){
        try {
            comprehensiveService.removeById(comprehensiveVo);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除文件
     * @param
     * @return
     */
    @RequestMapping("batchDeleteFiles")
    public ResultObj batchDeleteFiles(ComprehensiveVo comprehensiveVo){
        try {
            Collection<Serializable> idList = new ArrayList<>();
            for (Integer id : comprehensiveVo.getIds()) {
                idList.add(id);
            }
            comprehensiveService.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 下载文件
     */
    @RequestMapping("download")
    public HttpServletResponse download(String path, HttpServletResponse response) {
        try {
            // path是指欲下载的文件的路径。
            File file = new File("src/main/resources/upload/"+path);
            // 取得文件名。
            String filename = file.getName();
            // 取得文件的后缀名。
            String ext = filename.substring(filename.lastIndexOf(".") + 1).toUpperCase();

            // 以流的形式下载文件。
            InputStream fis = new BufferedInputStream(new FileInputStream("src/main/resources/upload/"+path));
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            fis.close();
            // 清空response
            response.reset();
            // 设置response的Header
            response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
            response.addHeader("Content-Length", "" + file.length());
            OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
            response.setContentType("application/octet-stream");
            toClient.write(buffer);
            toClient.flush();
            toClient.close();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return response;
    }

    /*
    驳回文件
     */
    @RequestMapping("reject")
    public ResultObj reject(Comprehensive comprehensive){
        User user = (User) WebUtils.getSession().getAttribute("user");
        try {
            Comprehensive comprehensive1=comprehensiveService.getById(comprehensive.getId());
            comprehensive1.setJstatus("初审驳回");
            Date d=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            comprehensive1.setJname("审核人："+user.getName()+"  审核时间："+sdf.format(d)+" 操作：初审驳回");
            comprehensiveService.updateById(comprehensive1);
            return ResultObj.REJECT_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.REJECT_ERROR;
        }
    }

    /*
    复审驳回文件
     */
    @RequestMapping("rreject")
    public ResultObj rReject(Comprehensive comprehensive){
        User user = (User) WebUtils.getSession().getAttribute("user");
        try {
            Comprehensive comprehensive1=comprehensiveService.getById(comprehensive.getId());
            comprehensive1.setJstatus("复审驳回");
            Date d=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            comprehensive1.setJname("审核人："+user.getName()+"  审核时间："+sdf.format(d)+" 操作：复审驳回");
            comprehensiveService.updateById(comprehensive1);
            return ResultObj.REJECT_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.REJECT_ERROR;
        }
    }
    /*
    初审通过文件
     */
    @RequestMapping("fpass")
    public ResultObj pass(Comprehensive comprehensive){
        User user = (User) WebUtils.getSession().getAttribute("user");
        try {
            Comprehensive comprehensive1=comprehensiveService.getById(comprehensive.getId());
            comprehensive1.setJstatus("初审通过");
            comprehensive1.setCompscore(comprehensive.getCompscore());
            Date d=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            comprehensive1.setJname("审核人："+user.getName()+"  审核时间："+sdf.format(d)+" 操作：初审通过");
            comprehensiveService.updateById(comprehensive1);
            return ResultObj.PASS_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.PASS_ERROR;
        }
    }
    /*
    复审通过文件
     */
    @RequestMapping("rpass")
    public ResultObj rPass(Comprehensive comprehensive){
        User user = (User) WebUtils.getSession().getAttribute("user");
        try {
            Comprehensive comprehensive1=comprehensiveService.getById(comprehensive.getId());
            comprehensive1.setJstatus("已审核");
            comprehensive1.setCompscore(comprehensive.getCompscore());
            Date d=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            comprehensive1.setJname("审核人："+user.getName()+"  审核时间："+sdf.format(d)+" 操作：已审核");
            comprehensiveService.updateById(comprehensive1);
            return ResultObj.PASS_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.PASS_ERROR;
        }
    }

    //load当前班级所有文件
    @RequestMapping("loadallfilesbyclass")
    public DataGridView loadAllFilesByClass(ComprehensiveVo comprehensiveVo){
        IPage<Comprehensive> page = new Page<Comprehensive>(comprehensiveVo.getPage(),comprehensiveVo.getLimit());
        QueryWrapper<Comprehensive> queryWrapper = new QueryWrapper<Comprehensive>();
        User user = (User) WebUtils.getSession().getAttribute("user");
        //进行查询
        queryWrapper.eq("deptid",user.getDeptid()).and(wrapper->wrapper.eq("jstatus","待审核").or().eq("jstatus","初审通过").or().eq("jstatus","初审驳回").or().eq("jstatus","复审驳回"));
        //根据创建时间进行排序
        queryWrapper.orderByDesc("submittime");
        comprehensiveService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

    @RequestMapping("loadallfilesbyteacher")
    public DataGridView loadAllFilesByTeacher(ComprehensiveVo comprehensiveVo){
        IPage<Comprehensive> page = new Page<Comprehensive>(comprehensiveVo.getPage(),comprehensiveVo.getLimit());
        QueryWrapper<Comprehensive> queryWrapper = new QueryWrapper<Comprehensive>();
        if(comprehensiveVo.getDeptname()!=null){
            queryWrapper.like(StringUtils.isNotBlank(comprehensiveVo.getDeptname()),"deptname",comprehensiveVo.getDeptname().equals("华北理工大学管理学院")?"":comprehensiveVo.getDeptname());
        }
        queryWrapper.like(StringUtils.isNotBlank(comprehensiveVo.getUsername()),"username",comprehensiveVo.getUsername());
        queryWrapper.and(wrapper->wrapper.eq("jstatus","初审通过").or().eq("jstatus","已审核").or().eq("jstatus","复审驳回"));
        queryWrapper.orderByDesc("submittime");
        comprehensiveService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }



}

