package info.puton.product.diviner.controller;

import info.puton.product.common.model.ActionResult;
import info.puton.product.diviner.model.Diviner;
import info.puton.product.diviner.service.INumberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by taoyang on 2/23/16.
 */

@Controller
@RequestMapping(value = "/number")
public class NumberController {

    @Resource
    INumberService ins;

    @ResponseBody
    @RequestMapping(value = "/query", method = RequestMethod.GET)
    public ActionResult query(@RequestParam(value = "billId",defaultValue = "88888") String billId){

        Diviner diviner = ins.selectByPrimaryKey(billId);

        if(diviner!=null){
            return new ActionResult(diviner);
        }else{
            return new ActionResult(false, "您输入的号码有误哦，换个浙江移动的号码试试。");
        }

    }

}
