package com.lcs.controller;

import com.lcs.entity.Teacher;
import com.lcs.service.ClazzService;
import com.lcs.service.TeacherService;
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
@RequestMapping("/teacher")
public class TeacherController {


    private static final String LIST = "teacher/list";
    private static final String ADD = "teacher/add";
    private static final String UPDATE = "teacher/update";

    @Autowired
    private TeacherService teacherService;
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
    public Map<String,Object> create(@RequestBody Teacher teacher){
        int result = teacherService.create(teacher);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @PostMapping("/delete/{id}")
    @ResponseBody
    public Map<String,Object> delete(@PathVariable("id") Integer id){
        int result = teacherService.delete(id);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @PostMapping("/delete")
    @ResponseBody
    public Map<String,Object> delete(String ids){
        int result = teacherService.delete(ids);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @PostMapping("/update")
    @ResponseBody
    public Map<String,Object> update(@RequestBody Teacher teacher){
        int result = teacherService.update(teacher);
        if(result<=0){
            return MapControll.getInstance().error().getMap();
        }
        return MapControll.getInstance().success().getMap();
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, ModelMap modelMap){
        Teacher teacher = teacherService.detail(id);
        modelMap.addAttribute("teacher",teacher);
        return UPDATE;
    }

    @PostMapping("/query")
    @ResponseBody
    public Map<String,Object> query(@RequestBody Teacher teacher){
        List<Teacher> list = teacherService.query(teacher);
        Integer count = teacherService.count(teacher);
        return MapControll.getInstance().success().page(list,count).getMap();
    }

    @GetMapping("/list")
    public String list(){
        return LIST;
    }



}
