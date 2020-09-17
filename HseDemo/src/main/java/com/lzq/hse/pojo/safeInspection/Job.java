package com.lzq.hse.pojo.safeInspection;

import java.util.Date;

public class Job {
    private Integer id;

    private String jobAddr;

    private String recorder;

    private Date createTime;

    private Byte isPlanjob;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJobAddr() {
        return jobAddr;
    }

    public void setJobAddr(String jobAddr) {
        this.jobAddr = jobAddr;
    }

    public String getRecorder() {
        return recorder;
    }

    public void setRecorder(String recorder) {
        this.recorder = recorder;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Byte getIsPlanjob() {
        return isPlanjob;
    }

    public void setIsPlanjob(Byte isPlanjob) {
        this.isPlanjob = isPlanjob;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", jobAddr=").append(jobAddr);
        sb.append(", recorder=").append(recorder);
        sb.append(", createTime=").append(createTime);
        sb.append(", isPlanjob=").append(isPlanjob);
        sb.append("]");
        return sb.toString();
    }
}