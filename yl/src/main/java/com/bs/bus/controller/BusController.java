package com.bs.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("bus")
public class BusController {

    @RequestMapping("addscore")
    public String addScore(){
        return "bus/score/scoreadd";
    }

    @RequestMapping("calscore")
    public String calScore(){
        return "bus/score/calscore";
    }

    @RequestMapping("result")
    public String result(){
        return "bus/score/result";
    }

    @RequestMapping("addfiles")
    public String addFiles(){
        return "bus/mine/addfiles";
    }

    @RequestMapping("term")
    public String term(){
        return "bus/mine/term";
    }

    @RequestMapping("judge")
    public String judge(){
        return "bus/score/judge";
    }

    @RequestMapping("endjudge")
    public String endJudge(){
        return "bus/score/endjudge";
    }

    @RequestMapping("qualify")
    public String qualifySearch(){return "bus/mine/qualify";}
}
