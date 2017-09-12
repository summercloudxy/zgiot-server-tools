package com.zgiot.filterpress;

import org.springframework.web.bind.annotation.*;

import java.sql.*;

@RestController
@RequestMapping(value = "/fptool")
public class FPressToolController {
    @RequestMapping(
            value = "/generate",
            method = RequestMethod.GET)
    public void doGenerate(@RequestParam String destFolder) throws Exception {
        // TODO
        System.out.println(destFolder);
    }

}
