package team.cpt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import team.cpt.dao.ISortDao;
import team.cpt.pojo.Sort;

import java.util.List;

/**
 * SortService
 *
 * @author aRookie
 * @Date 2019/8/19
 * 文件说明:
 */
@Service("sortService")
public class SortService implements ISortService {

    @Autowired
    @Qualifier("sortDao")
    private ISortDao sortDao;
    @Override
    public List<Sort> findAllCptType() {

        List<Sort> sorts = sortDao.findAllCptType();
        return sorts;
    }
}
