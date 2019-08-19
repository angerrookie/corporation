package team.cpt.dao;

import org.springframework.stereotype.Repository;
import team.cpt.pojo.Sort;
import team.cpt.pojo.User;

/**
 * IUserDao
 *
 * @author aRookie
 * @Date 2019/8/18
 * 文件说明:
 */
@Repository("userDao")
public interface IUserDao {
    /**
     * @author: aRookie
     * @date: 2019/8/18 16:37
     * Description:
     * 根据用户名查询信息
     */
    public User findByName(String username);

}
