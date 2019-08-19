package team.cpt.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import team.cpt.pojo.Cpt;
import team.cpt.pojo.Sort;
import team.cpt.service.ICptService;
import team.cpt.service.ISortService;
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
public class CptController {

    @Autowired
    @Qualifier("userService")
    private IUserService userService;

    @Autowired
    @Qualifier("cptService")
    private ICptService cptService;

    @Autowired
    @Qualifier("sortService")
    private ISortService sortService;
    /**
     * @author: aRookie
     * @date: 2019/8/19 12:08
     * Description:
     * 所有社团类型
     */
    @RequestMapping("/all")
    public String findAllType(ModelMap modelMap){

        //查询所有社团类型
        List<Sort> sorts = sortService.findAllCptType();
        System.out.println("----"+sorts.get(0).getSortType()+sorts.size());
        //查询所有社团
        List<Cpt> cpts = cptService.findAllCpt();
        System.out.println(cpts.get(0).getCptName());

        modelMap.put("sorts", sorts);
        modelMap.put("cpts", cpts);

        return "allcpt";
    }

    /**
     * @author: aRookie
     * @date: 2019/8/19 16:47
     * Description:
     * 根据类型id找到社团
     */
    @RequestMapping("sortCpt")
    public String findCptBySortId(int sortId,ModelMap modelMap){
        System.out.println(" ------findCptBySortId------"+sortId);
        List<Cpt> cpts = cptService.findByCptType(sortId);
        System.out.println("--------"+cpts.get(0).getCptName());

        modelMap.put("cpts", cpts);
        return "allcpt";
    }
    @RequestMapping("cptInfo")
    public String cptInfo(){

        return "cptInfo";
    }
}
