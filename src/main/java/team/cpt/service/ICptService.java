package team.cpt.service;

import team.cpt.pojo.Cpt;
import team.cpt.pojo.Sort;

import java.util.List;

/**
 * ICptService
 *
 * @author aRookie
 * @Date 2019/8/19
 * 文件说明:
 */
public interface ICptService {

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
