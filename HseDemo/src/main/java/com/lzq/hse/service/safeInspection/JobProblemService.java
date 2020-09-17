package com.lzq.hse.service.safeInspection;


import com.lzq.hse.mapper.safeInspection.JobProblemMapper;
import com.lzq.hse.pojo.safeInspection.JobProblem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class JobProblemService {

    @Autowired
    private JobProblemMapper jobProblemMapper;


    public int insertSelective(JobProblem record){
        return jobProblemMapper.insertSelective(record);
    }


    public JobProblem selectByPrimaryKey(Integer id){
        JobProblem jobProblem = new JobProblem();
        jobProblem.setId(id);
        return jobProblemMapper.selectOne(jobProblem);
    };





}
