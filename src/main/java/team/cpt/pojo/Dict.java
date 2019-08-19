package team.cpt.pojo;

public class Dict {
    private Integer dictId;
    private Integer parentId;
    private String dictDesc;
    private Integer dictState;

    public Integer getDictId() {
        return dictId;
    }

    public void setDictId(Integer dictId) {
        this.dictId = dictId;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getDictDesc() {
        return dictDesc;
    }

    public void setDictDesc(String dictDesc) {
        this.dictDesc = dictDesc;
    }

    public Integer getDictState() {
        return dictState;
    }

    public void setDictState(Integer dictState) {
        this.dictState = dictState;
    }
}
