package com.lcs.controller;

import com.lcs.entity.Course;
import com.lcs.service.ClazzService;
import com.lcs.service.CourseService;
import com.lcs.service.SubjectService;
import com.lcs.utils.MapControll;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author 刘成舜
 * @Description:
 */
@Controller
@RequestMapping("/course")
public class CourseController {



    private static final String LIST = "course/list";
    private static final String ADD = "course/add";
    private static final String UPDATE = "course/update";

    @Autowired
    private CourseService courseService;
    @Autowired
    private SubjectService subjectService;
    @Autowired
    private ClazzService clazzService;

    @GetMapping("/add")
    public String create(ModelMap modelMap){
        return ADD;
    }

    @PostMapping("/create")
    @ResponseBody
    public Map<String,Object> create(@RequestBody Course course){
        int result = courseService.create(course);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @PostMapping("/delete/{id}")
    @ResponseBody
    public Map<String,Object> delete(@PathVariable("id") Integer id){
        int result = courseService.delete(id);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @PostMapping("/delete")
    @ResponseBody
    public Map<String,Object> delete(String ids){
        int result = courseService.delete(ids);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @PostMapping("/update")
    @ResponseBody
    public Map<String,Object> update(@RequestBody Course course){
        int result = courseService.update(course);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, ModelMap modelMap){
        Course course = courseService.detail(id);
        modelMap.addAttribute("course",course);
        return UPDATE;
    }

    @PostMapping("/query")
    @ResponseBody
    public Map<String,Object> query(@RequestBody Course course){
        List<Course> list = courseService.query(course);
        Integer count = courseService.count(course);
        return MapControll.getInstance().success().page(list,count).getMap();
    }

    @GetMapping("/list")
    public String list(){
        return LIST;
    }

}
