package com.lzq.hse.service.safeInspection;


import com.github.pagehelper.PageHelper;
import com.lzq.hse.mapper.safeInspection.JobMapper;
import com.lzq.hse.pojo.safeInspection.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class JobService {

    @Autowired
    private JobMapper jobMapper;


    public List<Job> listForPage(int page, int size){
        PageHelper.startPage(page,size);
        List<Job> jobList = jobMapper.selectAll();
        return jobList;
    }


    public int add(Job job){
        return jobMapper.insert(job);
    }

}
