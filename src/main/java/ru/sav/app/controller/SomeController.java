package ru.sav.app.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SomeController {

    static Logger log = Logger.getLogger(SomeController.class);

    @RequestMapping("/someurl")
    public String someController(Model model) {
        log.info("log info");

        model.addAttribute("attr", "some attribute");
        return "someView";
    }

}
