package com.bs.bus.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.bs.bus.entity.Basicscore;
import com.bs.bus.entity.Comprehensive;
import com.bs.bus.entity.Terms;
import com.bs.bus.entity.Totlescore;
import com.bs.bus.service.IBasicscoreService;
import com.bs.bus.service.IComprehensiveService;
import com.bs.bus.service.ITotlescoreService;
import com.bs.bus.vo.Calstu;
import com.bs.bus.vo.ComprehensiveVo;
import com.bs.bus.vo.TotlescoreVo;
import com.bs.sys.common.DataGridView;
import com.bs.sys.common.ResultObj;
import com.bs.sys.common.TreeNode;
import com.bs.sys.common.WebUtils;
import com.bs.sys.common.excel.StringUtil;
import com.bs.sys.entity.Dept;
import com.bs.sys.entity.User;
import com.bs.sys.service.IDeptService;
import com.bs.sys.service.IRoleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author yl
 * @since 2020-04-27
 */
@RestController
@RequestMapping("/bus/totlescore")
public class TotlescoreController {

    @Autowired
    private ITotlescoreService totlescoreService;

    @Autowired
    private IRoleService roleService;

    @Autowired
    private IBasicscoreService basicscoreService;

    @Autowired
    private IDeptService deptService;

    @Autowired
    private IComprehensiveService comprehensiveService;

    //MybatisPlus
    @RequestMapping("calscore")
    public ResultObj calScore(TotlescoreVo totlescoreVo){
        if(totlescoreVo.getRate()==null){
            totlescoreVo.setRate(0.15f);
        }
        try {
            User user = (User) WebUtils.getSession().getAttribute("user");
            //写不同登录用户角色能查看的数据
            List<Integer> roleids=roleService.queryUserRoleIdsByUid(user.getId());
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
            if (Maxrole.equals("超级管理员")||Maxrole.equals("老师")){
                String caldept=totlescoreVo.getGrade()+totlescoreVo.getDeptname();
                QueryWrapper<Comprehensive> comprehensiveQueryWrapper=new QueryWrapper<>();
                comprehensiveQueryWrapper.like("deptname",caldept);
                comprehensiveQueryWrapper.eq("jstatus","已审核");
                //得到已审核的某个年级专业所有学生
                List<Comprehensive> comprehensives=comprehensiveService.list(comprehensiveQueryWrapper);
                comprehensiveQueryWrapper.select("distinct term");
                List<Comprehensive> terms=comprehensiveService.list(comprehensiveQueryWrapper);
                List<String> termlist=new ArrayList<>();
                //每个学期的学生综测成绩用map接收，键为学期
                Map<String,Object> map=new HashMap<>();
                //得到学期数
                for(Comprehensive comprehensive:terms){
                    termlist.add(comprehensive.getTerm());
                }
                //找到专业内有资格提交成绩的所有的学生
                QueryWrapper<Basicscore> basicscoreQueryWrapper=new QueryWrapper<>();
                basicscoreQueryWrapper.like("deptname",caldept);
                basicscoreQueryWrapper.eq("qualify","有");
                List<Basicscore> qualifystus=basicscoreService.list(basicscoreQueryWrapper);

                //存储每个学生的加权综测成绩，学期为key，值为map，每学期的所有学生加权综测
                Map<String,Map> termstuscore=new HashMap<>();

                //存储每个学期学生的总成绩


                //计算所有学生每学期综测成绩
                for(int i=0;i<termlist.size();i++){
                    //stumap存储学号key和总成绩value
                    Map<String,Calstu> stumap=new HashMap<>();
                    List<String> stuidlist=new ArrayList<>();
                    //把所有人成绩赋值为0
                    for(Basicscore basicscore:qualifystus){
                        stumap.put(basicscore.getUserid(),new Calstu(basicscore.getUserid(),"",0.00f));
                    }
                    for(Comprehensive comprehensive:comprehensives){
                        if(termlist.get(i).equals(comprehensive.getTerm())&&!stuidlist.contains(comprehensive.getUserid())){
                            stuidlist.add(comprehensive.getUserid());
                            stumap.get(comprehensive.getUserid()).setScore(comprehensive.getCompscore());
                            stumap.get(comprehensive.getUserid()).setTerm(comprehensive.getTerm());
                        }
                        if(termlist.get(i).equals(comprehensive.getTerm())&&stuidlist.contains(comprehensive.getUserid())){
                            stumap.get(comprehensive.getUserid()).setScore(stumap.get(comprehensive.getUserid()).getScore()+comprehensive.getCompscore());
                        }
                    }
                    //找出总成绩最大的人，如果最大大于100，则把最高分的综测成绩赋值为100，其他人分数除以(总成绩最高者/100),得到所有人本学期综测成绩
                    Float Maxscore=0.00f;
                    String Maxusrid="";
                    for(String userid:stumap.keySet()){
                        if(stumap.get(userid).getScore()>=Maxscore){
                            Maxscore=stumap.get(userid).getScore();
                            Maxusrid=stumap.get(userid).getUserid();
                        }
                    }
                    if(Maxscore>=100){
                        Float divider=Maxscore/100;
                        for (String usrid:stumap.keySet()){
                            if (usrid.equals(Maxusrid)){
                                stumap.get(Maxusrid).setScore(100.00f);
                            }else {
                                stumap.get(usrid).setScore(stumap.get(usrid).getScore()/divider);
                            }
                        }
                    }
                    //此时stumap为本学期所有学生的加权学分成绩
                    termstuscore.put(termlist.get(i),stumap);
                }
                //存储所有学期综测加权后的成绩，最终综测成绩,key为学号，值为综测
                Map<String,Calstu> endcomstu=new HashMap<>();

                //遍历有资格的所有学生，算出所有学期加权综测成绩
                for(Basicscore basicscore:qualifystus){
                    endcomstu.put(basicscore.getUserid(),new Calstu(basicscore.getUserid(),termlist.size()+"年",0.00f));
                    for(int i=0;i<termlist.size();i++){
                        Map<String,Calstu> stusMap=termstuscore.get(termlist.get(i));
                        for(String userid:stusMap.keySet()){
                            if(userid.equals(basicscore.getUserid())){
                                endcomstu.get(basicscore.getUserid()).setScore(endcomstu.get(basicscore.getUserid()).getScore()+stusMap.get(userid).getScore());
                            }
                        }

                    }
                    endcomstu.get(basicscore.getUserid()).setScore(endcomstu.get(basicscore.getUserid()).getScore()/termlist.size());
                }
                //计算推免成绩
                List<Totlescore> totlescores=new ArrayList<>();
                Totlescore totlescore=null;
                for(Basicscore basicscore:qualifystus){
                    totlescore=new Totlescore();
                    totlescore.setTotlescore(basicscore.getAddscore()*(1-totlescoreVo.getRate())+endcomstu.get(basicscore.getUserid()).getScore()*totlescoreVo.getRate());
                    totlescore.setUserid(basicscore.getUserid());
                    totlescore.setUsername(basicscore.getUsername());
                    totlescore.setDeptid(basicscore.getDeptid());
                    totlescore.setDeptname(basicscore.getDeptname());
                    totlescore.setAddava(endcomstu.get(basicscore.getUserid()).getScore());
                    totlescore.setYear((Integer.parseInt(totlescoreVo.getGrade())+4)+"年推免");
                    totlescore.setBasicesocre(basicscore.getAddscore());
                    totlescore.setBasicrank(basicscore.getRank());
                    Map<String,Calstu> calstuMap=termstuscore.get(basicscore.getUserid().substring(0,4)+"年秋");
                    if(calstuMap!=null){
                        totlescore.setM11(calstuMap.get(basicscore.getUserid()).getScore());
                    }else {
                        totlescore.setM11(0.00f);
                    }
                    Map<String,Calstu> calstuMap1=termstuscore.get((Integer.parseInt(basicscore.getUserid().substring(0,4))+1)+"年春");
                    if(calstuMap1!=null){
                        totlescore.setM12(calstuMap1.get(basicscore.getUserid()).getScore());
                    }else {
                        totlescore.setM12(0.00f);
                    }
                    Map<String,Calstu> calstuMap2=termstuscore.get((Integer.parseInt(basicscore.getUserid().substring(0,4))+1)+"年秋");
                    if(calstuMap2!=null){
                        totlescore.setM21(calstuMap2.get(basicscore.getUserid()).getScore());
                    }else {
                        totlescore.setM21(0.00f);
                    }
                    Map<String,Calstu> calstuMap3=termstuscore.get((Integer.parseInt(basicscore.getUserid().substring(0,4))+2)+"年春");
                    if(calstuMap3!=null){
                        totlescore.setM22(calstuMap3.get(basicscore.getUserid()).getScore());
                    }else {
                        totlescore.setM22(0.00f);
                    }
                    Map<String,Calstu> calstuMap4=termstuscore.get((Integer.parseInt(basicscore.getUserid().substring(0,4))+2)+"年秋");
                    if(calstuMap4!=null){
                        totlescore.setM31(calstuMap4.get(basicscore.getUserid()).getScore());
                    }else {
                        totlescore.setM31(0.00f);
                    }
                    Map<String,Calstu> calstuMap5=termstuscore.get((Integer.parseInt(basicscore.getUserid().substring(0,4))+3)+"年春");
                    if(calstuMap5!=null){
                        totlescore.setM32(calstuMap5.get(basicscore.getUserid()).getScore());
                    }else {
                        totlescore.setM32(0.00f);
                    }
                    Date d=new Date();
                    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    totlescore.setOpername("操作人："+user.getName()+" 操作时间："+sdf.format(d));
                    //如果算过，更新成绩，没算过保存成绩
                    QueryWrapper<Totlescore> totlescoreQueryWrapper1=new QueryWrapper<>();
                    totlescoreQueryWrapper1.eq("userid",basicscore.getUserid());
                    if(totlescoreService.getOne(totlescoreQueryWrapper1)==null){
                        totlescoreService.save(totlescore);
                    }else {
                        totlescore.setId(totlescoreService.getOne(totlescoreQueryWrapper1).getId());
                        totlescoreService.updateById(totlescore);
                    }
                }

                //计算推免排名
                QueryWrapper<Totlescore> totlescoreQueryWrapper=new QueryWrapper<>();
                totlescoreQueryWrapper.eq("year",(Integer.parseInt(totlescoreVo.getGrade())+4)+"年推免");
                totlescoreQueryWrapper.orderByDesc("totlescore");
                totlescores=totlescoreService.list(totlescoreQueryWrapper);
                int i=1;
                for(Totlescore totlescore1:totlescores){
                    totlescore1.setRank(i);
                    totlescoreService.updateById(totlescore1);
                    i++;
                }
                //计算加分排名
                QueryWrapper<Totlescore> totlescoreQueryWrapperrank=new QueryWrapper<>();
                totlescoreQueryWrapperrank.eq("year",(Integer.parseInt(totlescoreVo.getGrade())+4)+"年推免");
                totlescoreQueryWrapperrank.orderByDesc("addava");
                totlescores=totlescoreService.list(totlescoreQueryWrapperrank);
                int j=1;
                for(Totlescore totlescore2:totlescores){
                    totlescore2.setAddrank(j);
                    totlescoreService.updateById(totlescore2);
                    j++;
                }
                return ResultObj.CAL_SUCCESS;
            }
            else {
                return ResultObj.CAL_NOPERMISSION;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.CAL_ERROR;
        }
    }

    //查出所有的专业列，下拉列表用
    @RequestMapping("majortree")
    public DataGridView majorTree(){
        QueryWrapper<Dept> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("pid",1);
        List<TreeNode> treeNodes = new ArrayList<>();
        List<Dept> list = deptService.list(queryWrapper);
        //将部门放入treeNodes中，组装成json
        for (Dept dept: list) {
            treeNodes.add(new TreeNode(dept.getId(),dept.getName(),0));
        }
        return new DataGridView(treeNodes);
    }

    //查出所有的年级列，下拉列表用
    @RequestMapping("gradetree")
    public DataGridView gradeTree(){
        QueryWrapper<Basicscore> queryWrapper=new QueryWrapper<>();
        queryWrapper.select("distinct deptname");
        List<TreeNode> treeNodes = new ArrayList<>();
        List<Basicscore> list = basicscoreService.list(queryWrapper);
        List<String> grades=new ArrayList<>();
        //将部门放入treeNodes中，组装成json
        for (Basicscore basicscore: list) {
            if(!grades.contains(basicscore.getDeptname().substring(0,2))){
                grades.add(basicscore.getDeptname().substring(0,2));
                treeNodes.add(new TreeNode(basicscore.getDeptid(),basicscore.getDeptname().substring(0,2),0));
            }
        }
        return new DataGridView(treeNodes);
    }

    //load所有推免结果
    @RequestMapping("loadallresult")
    public DataGridView loadAllResult(TotlescoreVo totlescoreVo){
        IPage<Totlescore> page = new Page<Totlescore>(totlescoreVo.getPage(),totlescoreVo.getLimit());
        QueryWrapper<Totlescore> queryWrapper = new QueryWrapper<Totlescore>();
        System.out.println("---------"+totlescoreVo.getDeptname()+totlescoreVo.getUsername());
        //进行查询
        if(totlescoreVo.getDeptname()!=null){
            queryWrapper.like("deptname",totlescoreVo.getDeptname().equals("华北理工大学管理学院")?"":totlescoreVo.getDeptname());
        }
            queryWrapper.eq(StringUtils.isNotBlank(totlescoreVo.getUsername()),"username",totlescoreVo.getUsername());
        if(totlescoreVo.getUsername()==null&&totlescoreVo.getDeptname()==null){
            queryWrapper.like("deptname","");
        }
        queryWrapper.orderByAsc("rank");
        totlescoreService.page(page,queryWrapper);
        return new DataGridView(page.getTotal(),page.getRecords());
    }

}

