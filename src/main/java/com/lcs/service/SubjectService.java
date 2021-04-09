package com.lcs.service;

import com.github.pagehelper.PageHelper;
import com.lcs.dao.SubjectDao;
import com.lcs.entity.Subject;
import com.lcs.utils.BeanMapUtils;
import com.lcs.utils.MapParameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SubjectService {

    @Autowired
    private SubjectDao subjectDao;

    public int create(Subject pi) {
        return subjectDao.create(pi);
    }

    public int delete(Integer id) {
        return subjectDao.delete(MapParameter.getInstance().addId(id).getMap());
    }
    public int delete(String ids) {
        int flag = 0;
        for (String str : ids.split(",")) {
            flag = subjectDao.delete(MapParameter.getInstance().addId(Integer.parseInt(str)).getMap());
        }
        return flag;
    }

    public int update(Subject subject) {
        Map<String, Object> map = MapParameter.getInstance().add(BeanMapUtils.beanToMapForUpdate(subject)).addId(subject.getId()).getMap();
        return subjectDao.update(map);
    }

    public List<Subject> query(Subject subject) {
        //当查询条件有分页信息时，按照分页查询
        if(subject != null && subject.getPage() != null){
            PageHelper.startPage(subject.getPage(),subject.getLimit());
        }
        return subjectDao.query(BeanMapUtils.beanToMap(subject));
    }

    public Subject detail(Integer id) {
        return subjectDao.detail(MapParameter.getInstance().addId(id).getMap());
    }

    public int count(Subject subject) {
        return subjectDao.count(BeanMapUtils.beanToMap(subject));
    }


}
