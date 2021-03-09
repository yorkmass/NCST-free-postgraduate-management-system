package com.bs.bus.common;

import com.bs.bus.entity.Basicscore;
import com.bs.sys.common.excel.ExcelUtil;
import com.bs.sys.service.IDeptService;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Component
public class ScoreExcelParse {


    public static List<Basicscore> ExceltoScore(File userUploadFile){
        List<Basicscore> list=new ArrayList<>();
        Basicscore score=null;
        try {
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(userUploadFile));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            //获取第一个sheet页
            HSSFSheet sheet = wb.getSheetAt(0);
            if(sheet!=null){
                for(int rowNum =1;rowNum<=sheet.getLastRowNum();rowNum++){
                    HSSFRow row = sheet.getRow(rowNum);
                    if(row==null){
                        continue;
                    }
                    score=new Basicscore();
                    //将单元格里每行数据存入ScoreVo对象中
                    score.setUserid(ExcelUtil.formatCell(row.getCell(0)).split("\\.")[0].trim());
                    score.setUsername(ExcelUtil.formatCell(row.getCell(1)));
                    score.setPdeptname(ExcelUtil.formatCell(row.getCell(2)).split("\\.")[0]);
                    score.setDeptname(ExcelUtil.formatCell(row.getCell(3)).split("\\.")[0]);
                    score.setAvascore(Float.parseFloat(ExcelUtil.formatCell(row.getCell(4))));
                    score.setAvastuscore(Float.parseFloat(ExcelUtil.formatCell(row.getCell(5))));
                    score.setAddscore(Float.parseFloat(ExcelUtil.formatCell(row.getCell(6))));
                    score.setPaddscore(Float.parseFloat(ExcelUtil.formatCell(row.getCell(7))));
                    score.setRank(Integer.parseInt(ExcelUtil.formatCell(row.getCell(8)).split("\\.")[0]));
                    score.setQualify(Integer.parseInt(ExcelUtil.formatCell(row.getCell(9)).split("\\.")[0])<2&&Integer.parseInt(ExcelUtil.formatCell(row.getCell(8)).split("\\.")[0])<sheet.getLastRowNum()*0.3?"有":"无");
                    list.add(score);
                }
            }
        }  catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }
}
