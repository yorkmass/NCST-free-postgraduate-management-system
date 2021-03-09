package com.bs.bus.vo;

import lombok.Data;

@Data
public class Calstu {
    private String userid;
    private String term;
    private Float score=0.00f;

    public Calstu(String userid,String term,Float score){
        this.userid=userid;
        this.term=term;
        this.score=score;
    }
}
