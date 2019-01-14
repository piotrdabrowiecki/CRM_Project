package pl.coderslab.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/admin")
public class AdminController {




    @RequestMapping(value = "/admin", produces = "text/html; charset=utf-8")
    public String viewAdminPage() {


        return "/admin/admin";



    }























}
