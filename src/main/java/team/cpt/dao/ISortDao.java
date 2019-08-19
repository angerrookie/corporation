package team.cpt.dao;

import org.springframework.stereotype.Repository;
import team.cpt.pojo.Sort;

import java.util.List;

/**
 * ISortDao
 *
 * @author aRookie
 * @Date 2019/8/19
 * 文件说明:
 */
@Repository("sortDao")
public interface ISortDao {
    /**
     * @author: aRookie
     * @date: 2019/8/19 11:43
     * Description:
     * 查询所有社团类型
     */
    public List<Sort> findAllCptType();
}
