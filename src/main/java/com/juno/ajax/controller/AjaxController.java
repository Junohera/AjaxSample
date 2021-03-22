package com.juno.ajax.controller;

import com.juno.ajax.TestDTO;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import sun.misc.Request;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Log4j2
@Controller
public class AjaxController {

    // @GetMapping("ajaxCall") 아래와 동일(= 어노테이션에 GET포함)
    @RequestMapping(method = RequestMethod.GET, value = "ajaxCall")
    public @ResponseBody HashMap<String, Object> ajaxGetCall(@RequestParam String requestValue) {
        log.info("겟방식 컨트롤러 수행");
        log.info(requestValue);

        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("from", "getMapping");
        result.put("requestValue", requestValue);
        result.put("data", TestDTO.builder().name("url의 값을 받지").type("겟방식이니까").now(new Date()).build());

        return result;
    }

    // @PostMapping("ajaxCall") 아래와 동일(= 어노테이션에 POST포함)
    @RequestMapping(method = RequestMethod.POST, value = "ajaxCall")
    public @ResponseBody HashMap<String, Object> ajaxPostCall(@RequestBody String requestValue) {
        log.info("포스트방식 컨트롤러 수행");
        log.info(requestValue);

        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("from", "postMapping");
        result.put("requestValue", requestValue);
        result.put("data", TestDTO.builder().name("requestBody의 값을 받지").type("포스트방식이니까").now(new Date()).build());

        return result;
    }

    @RequestMapping(method = RequestMethod.GET, value = "syncCall")
    public String syncCall() {
        return "ajaxTest";
    }


}
