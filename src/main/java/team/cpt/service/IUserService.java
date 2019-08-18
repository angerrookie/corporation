package team.cpt.service;

import team.cpt.pojo.User;

/**
 * IUserService
 *
 * @author aRookie
 * @Date 2019/8/18
 * 文件说明:
 */
public interface IUserService {

    /**
     * @author: aRookie
     * @date: 2019/8/18 16:33
     * Description:
     * 用户登录
     */
    public User login(User user);
}
