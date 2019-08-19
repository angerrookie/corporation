package team.cpt.service;

import org.springframework.stereotype.Service;
import team.cpt.pojo.Sort;

import java.util.List;

/**
 * ISortService
 *
 * @author aRookie
 * @Date 2019/8/19
 * 文件说明:
 */

public interface ISortService {
    /**
     * @author: aRookie
     * @date: 2019/8/19 11:43
     * Description:
     * 查询所有社团类型
     */
    public List<Sort> findAllCptType();
}
