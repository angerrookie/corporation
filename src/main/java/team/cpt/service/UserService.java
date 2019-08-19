package team.cpt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import team.cpt.dao.ICptDao;
import team.cpt.dao.IUserDao;
import team.cpt.pojo.Cpt;
import team.cpt.pojo.Sort;
import team.cpt.pojo.User;

import java.util.List;

/**
 * UserService
 *
 * @author aRookie
 * @Date 2019/8/18
 * 文件说明:
 */
@Service("userService")
public class UserService implements IUserService{

    @Autowired
    @Qualifier("userDao")
    private IUserDao userDao;

    @Autowired
    @Qualifier("cptDao")
    private ICptDao cptDao;
    /**
     * @author: aRookie
     * @date: 2019/8/18 16:38
     * Description:
     * 用户登录
     */
    @Override
    public User login(User user) {
        if (user!=null&&(!"".equals(user.getUsername())||user.getUsername()!=null)){
            User user1 = userDao.findByName(user.getUsername());
            if (user.getPassword().equals(user1.getPassword())){
                return user1;
            }
        }
        return null;
    }
    /**
     * @author: aRookie
     * @date: 2019/8/19 11:45
     * Description:
     * 查询所有社团类型
     */
    public List<Sort> findAllCptType() {
      List<Sort> sort = cptDao.findAllCptType();
        return sort;
    }
    /**
     * 查询所有社团
     */
    public List<Cpt> findAllCpt(){

        List<Cpt> cpt = cptDao.findAllCpt();
        return cpt;
    }
    /**
     * @author: aRookie
     * @date: 2019/8/19 11:57
     * Description:
     * 根据类型查询所有社团
     */
    public List<Cpt> findCptByType(int sortid){
        List<Cpt> cpt = cptDao.findByCptType(sortid);
        return cpt;
    }
}
