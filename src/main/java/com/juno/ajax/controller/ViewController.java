package com.juno.ajax.controller;

import jdk.nashorn.internal.runtime.logging.Logger;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Log4j2
@Controller
public class ViewController {

    @GetMapping("/index")
    public void index() {
        log.info("index");
    }

    @GetMapping("/ajaxTest")
    public void ajaxTest() {
        log.info("AJAX를 사용하기 위한 페이지입니다.");
    }

}
