package com.accp.controller;

import com.accp.entity.Studentinfo;
import com.accp.service.StudentinfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class StudentinfoController {

    @Resource
    private StudentinfoService studentinfoService;

    @RequestMapping("/showList")
    public String showList(Model model){
        model.addAttribute("students",studentinfoService.queryStudent());
        return "index";
    }

    @RequestMapping("/JumpAdd")
    public String jumpAdd(){
        return "add";
    }

    @RequestMapping("/AddList")
    public String addList(Studentinfo studentinfo){
        studentinfoService.addStudentinfo(studentinfo);
        return "redirect:showList";
    }

    @RequestMapping("/DeleteS")
    public String deleteS(Studentinfo studentinfo){
        studentinfoService.deleteStudentinfo(studentinfo);
        return "redirect:showList";
    }

    @RequestMapping("/JumpUpdate")
    public String jumpUpdate(Studentinfo studentinfo,Model model){
        model.addAttribute("stu",studentinfoService.getByStudentId(studentinfo));
        return "update";
    }

    @RequestMapping("/UpdateS")
    public String updateS(Studentinfo studentinfo){
        studentinfoService.updateStudentinfo(studentinfo);
        return "redirect:showList";
    }
}