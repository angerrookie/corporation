package team.cpt.dao;

import org.springframework.stereotype.Repository;
import team.cpt.pojo.Cpt;
import team.cpt.pojo.Sort;

import java.util.List;

/**
 * ICptDao
 *
 * @author aRookie
 * @Date 2019/8/19
 * 文件说明:
 */
@Repository("cptDao")
public interface ICptDao {
    /**
     * @author: aRookie
     * @date: 2019/8/19 11:51
     * Description:
     * 查询所有社团
     */
    public List<Cpt> findAllCpt();
    /**
     * @author: aRookie
     * @date: 2019/8/19 11:52
     * Description:
     * 根据社团类型查社团
     */
    public List<Cpt> findByCptType(int sortid);
}
