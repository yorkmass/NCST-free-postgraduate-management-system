package com.bs.sys.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.bs.bus.entity.Basicscore;
import com.bs.bus.service.IBasicscoreService;
import com.bs.sys.common.ActiverUser;
import com.bs.sys.common.ResultObj;
import com.bs.sys.common.WebUtils;
import com.bs.sys.entity.Loginfo;
import com.bs.sys.service.ILoginfoService;
import com.bs.sys.vo.UserVo;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

/**
 * 登陆前端控制器
 */
@RestController
@RequestMapping("login")
public class LoginController {

    @Autowired
    private ILoginfoService loginfoService;

    @Autowired
    private IBasicscoreService basicscoreService;

    @RequestMapping("login")
    public ResultObj login(UserVo userVo,String code,HttpSession session){

        //获得存储在session中的验证码
        String sessionCode = (String) session.getAttribute("code");
        if (code!=null&&sessionCode.equals(code)){
            //获取shiro里面的subject对象
            Subject subject = SecurityUtils.getSubject();
            //把输入的密码进行凭证配置器（shiro配置了）里面设置的md5加密，生成token
            AuthenticationToken token = new UsernamePasswordToken(userVo.getLoginname(),userVo.getPwd());
            try {
                //使用shiro对用户进行认证登陆
                subject.login(token);
                //通过subject获取以认证活动的user
                ActiverUser activerUser = (ActiverUser) subject.getPrincipal();
                //将user存储到session中
                WebUtils.getSession().setAttribute("user",activerUser.getUser());
                //判断有无推免资格
                QueryWrapper<Basicscore> basicscoreQueryWrapper=new QueryWrapper<Basicscore>();
                basicscoreQueryWrapper.eq("userid",activerUser.getUser().getLoginname());
                WebUtils.getSession().setAttribute("qualify",basicscoreService.getOne(basicscoreQueryWrapper)!=null?basicscoreService.getOne(basicscoreQueryWrapper).getQualify():"error");
                //记录登陆日志
                Loginfo entity = new Loginfo();
                entity.setLoginname(activerUser.getUser().getName()+"-"+activerUser.getUser().getLoginname());
                entity.setLoginip(WebUtils.getRequest().getRemoteAddr());
                entity.setLogintime(new Date());
                loginfoService.save(entity);

                return ResultObj.LOGIN_SUCCESS;
            } catch (AuthenticationException e) {
                e.printStackTrace();
                return ResultObj.LOGIN_ERROR_PASS;
            }
        }else {
            return ResultObj.LOGIN_ERROR_CODE;
        }

    }

    /**
     * 得到登陆验证码
     * @param response
     * @param session
     * @throws IOException
     */
    @RequestMapping("getCode")
    public void getCode(HttpServletResponse response, HttpSession session) throws IOException{
        //定义图形验证码的长和宽
        LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(116, 36,4,5);
        session.setAttribute("code",lineCaptcha.getCode());
        try {
            ServletOutputStream outputStream = response.getOutputStream();
            lineCaptcha.write(outputStream);
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
