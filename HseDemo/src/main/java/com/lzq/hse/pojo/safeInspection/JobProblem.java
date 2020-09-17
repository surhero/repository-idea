package com.lzq.hse.pojo.safeInspection;

import java.util.Date;

public class JobProblem {
    private Integer id;

    private String jobAddr;

    private String constructionSite;

    private String checker;

    private Date checkTime;

    private String jobType;

    private String modificationState;

    private Byte isJobStop;

    private String pictureBefore;

    private String pictureAfter;

    private String problemDesc;

    private String modificationReason;

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

    public String getConstructionSite() {
        return constructionSite;
    }

    public void setConstructionSite(String constructionSite) {
        this.constructionSite = constructionSite;
    }

    public String getChecker() {
        return checker;
    }

    public void setChecker(String checker) {
        this.checker = checker;
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getModificationState() {
        return modificationState;
    }

    public void setModificationState(String modificationState) {
        this.modificationState = modificationState;
    }

    public Byte getIsJobStop() {
        return isJobStop;
    }

    public void setIsJobStop(Byte isJobStop) {
        this.isJobStop = isJobStop;
    }

    public String getPictureBefore() {
        return pictureBefore;
    }

    public void setPictureBefore(String pictureBefore) {
        this.pictureBefore = pictureBefore;
    }

    public String getPictureAfter() {
        return pictureAfter;
    }

    public void setPictureAfter(String pictureAfter) {
        this.pictureAfter = pictureAfter;
    }

    public String getProblemDesc() {
        return problemDesc;
    }

    public void setProblemDesc(String problemDesc) {
        this.problemDesc = problemDesc;
    }

    public String getModificationReason() {
        return modificationReason;
    }

    public void setModificationReason(String modificationReason) {
        this.modificationReason = modificationReason;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", jobAddr=").append(jobAddr);
        sb.append(", constructionSite=").append(constructionSite);
        sb.append(", checker=").append(checker);
        sb.append(", checkTime=").append(checkTime);
        sb.append(", jobType=").append(jobType);
        sb.append(", modificationState=").append(modificationState);
        sb.append(", isJobStop=").append(isJobStop);
        sb.append(", pictureBefore=").append(pictureBefore);
        sb.append(", pictureAfter=").append(pictureAfter);
        sb.append(", problemDesc=").append(problemDesc);
        sb.append(", modificationReason=").append(modificationReason);
        sb.append("]");
        return sb.toString();
    }
}