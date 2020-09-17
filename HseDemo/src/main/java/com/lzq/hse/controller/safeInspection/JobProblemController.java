package com.lzq.hse.controller.safeInspection;


import com.lzq.hse.pojo.safeInspection.JobProblem;
import com.lzq.hse.service.safeInspection.JobProblemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/jobProblem")
public class JobProblemController {
    @Autowired
    private JobProblemService jobProblemService;

    @RequestMapping("/add")
    public String  add(JobProblem record){
        int id = jobProblemService.insertSelective(record);
        return (id>0) ? "add ok":"add fail";
    }

    @RequestMapping("/one/{id}")
    public JobProblem list(@PathVariable("id") Integer id){
        return jobProblemService.selectByPrimaryKey(id);
    }


}
