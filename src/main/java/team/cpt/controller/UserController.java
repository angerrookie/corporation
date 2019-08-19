package team.cpt.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import team.cpt.pojo.Cpt;
import team.cpt.pojo.Sort;
import team.cpt.pojo.User;
import team.cpt.service.ICptService;
import team.cpt.service.IUserService;

import java.util.List;

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

    @Autowired
    @Qualifier("cptService")
    private ICptService cptService;
    /**
     * @author: aRookie
     * @date: 2019/8/19 12:08
     * Description:
     * 所有社团类型
     */
    @RequestMapping("all")
    public String findAllType(ModelMap modelMap){

        //查询所有社团类型
        List<Sort> sorts = cptService.findAllCptType();
        //查询所有社团
        List<Cpt> cpts = cptService.findAllCpt();
        modelMap.put("sorts", sorts);
        modelMap.put("cpts", cpts);

        return "allcpt";
    }

}
