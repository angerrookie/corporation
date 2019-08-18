package team.cpt.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import team.cpt.pojo.User;
import team.cpt.service.IUserService;

/**
 * UserController
 *
 * @author aRookie
 * @Date 2019/8/18
 * 文件说明:
 */
@Controller
@SessionAttributes("loginUser")
public class UserController {

    @Autowired
    @Qualifier("userService")
    private IUserService userService;
    /**
     * @author: aRookie
     * @date: 2019/8/18 16:39
     * Description:
     * 用户登录
     */
    @RequestMapping("login")
    @ResponseBody//返回json
    public String login(User user, ModelMap modelMap){

        System.out.println("----login-controller---");
        User user1 = userService.login(user);
        if (user1!=null){
            modelMap.put("loginUser", user1);
            return "true";
        }
        return "false";
    }
    @RequestMapping("home")
    public String login(){

        return "home";
    }
}
