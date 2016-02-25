package info.puton.product.test.controller;

import info.puton.product.test.model.Person;
import info.puton.product.test.service.IPersonService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Pauline on 16/2/24.
 */

@Controller
@RequestMapping(value = "haha")
public class HahaController {

    @Resource
    IPersonService ips;

    //返回页面
    @RequestMapping(value = "a")
    public String a(){
        return "aa";
    }


    //返回接口
    @ResponseBody
    @RequestMapping(value = "b")
    public Map b(){

        Map params =new HashMap();

        params.put("a","111");
        params.put("b","112");
        params.put("c","113");

        return params;
    }

    //返回接口
    @ResponseBody
    @RequestMapping(value = "person",method = RequestMethod.GET)
    public Person person(@RequestParam("name") String name){

        Person person = new Person();

        person.setId(1);
        person.setAge(99);
        person.setName(name);

        return person;
    }


    //返回接口
    @ResponseBody
    @RequestMapping(value = "person2",method = RequestMethod.GET)
    public Person person2(@RequestParam("age") Integer age){

        return ips.selectByAge(age);
    }

}
