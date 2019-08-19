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
}
