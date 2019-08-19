package team.cpt.pojo;

import java.util.Date;

public class Cpt {
    private Integer cptId;
    private String cptName;
    private Integer sortId;
    private String cptDesc;
    private Date cptDate;

    public Integer getCptId() {
        return cptId;
    }

    public void setCptId(Integer cptId) {
        this.cptId = cptId;
    }

    public String getCptName() {
        return cptName;
    }

    public void setCptName(String cptName) {
        this.cptName = cptName;
    }

    public Integer getSortId() {
        return sortId;
    }

    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }

    public String getCptDesc() {
        return cptDesc;
    }

    public void setCptDesc(String cptDesc) {
        this.cptDesc = cptDesc;
    }

    public Date getCptDate() {
        return cptDate;
    }

    public void setCptDate(Date cptDate) {
        this.cptDate = cptDate;
    }
}
