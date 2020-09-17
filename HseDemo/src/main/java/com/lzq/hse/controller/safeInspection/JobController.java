package com.lzq.hse.controller.safeInspection;


import com.github.pagehelper.PageInfo;
import com.lzq.hse.pojo.safeInspection.Job;
import com.lzq.hse.service.safeInspection.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/job")
public class JobController {

    @Autowired
    private JobService jobService;


    @RequestMapping("/pagelist")
    public ModelAndView listForPage(@RequestParam(value="page", defaultValue="1")int page,
                              @RequestParam(value="size", defaultValue="3")int size
                              ){
        ModelAndView modelAndView = new ModelAndView();
        List<Job> jobList = jobService.listForPage(page, size);
        PageInfo pageInfo = new PageInfo(jobList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("safeInspection/job_list");//safeInspection/job_list
        return modelAndView;
    }

    @RequestMapping("/add")
    public String add(Job job){
        jobService.add(job);
        return "redirect:job/pagelist";
    }
}
