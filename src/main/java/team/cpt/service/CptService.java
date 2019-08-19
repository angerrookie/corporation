package team.cpt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import team.cpt.dao.ICptDao;
import team.cpt.pojo.Cpt;
import team.cpt.pojo.Sort;

import java.util.List;

/**
 * CptService
 *
 * @author aRookie
 * @Date 2019/8/19
 * 文件说明:
 */
@Service("cptService")
public class CptService implements ICptService{

    @Autowired
    @Qualifier("cptDao")
    private ICptDao cptDao;
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
     * @date: 2019/8/19 15:10
     * Description:
     * 根据类型查社团
     */
    @Override
    public List<Cpt> findByCptType(int sortid) {

        List<Cpt> cpt = cptDao.findByCptType(sortid);
        return cpt;
    }

}
