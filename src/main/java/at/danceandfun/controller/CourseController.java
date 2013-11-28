package at.danceandfun.controller;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import at.danceandfun.entity.Course;
import at.danceandfun.service.CourseManager;

@Controller
@RequestMapping(value = "admin/course")
public class CourseController {

    private static Logger logger = Logger.getLogger(CourseController.class);

    @Autowired
    private CourseManager courseManager;

    private Course course = new Course();

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String listCourses(ModelMap map) {
        logger.debug("LIST course with id " + course.getCid());
        map.addAttribute("course", course);
        map.addAttribute("courseList", courseManager.getEnabledList());
        return "admin/courseView";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addCourse(
            @ModelAttribute(value = "course") @Valid Course course,
            BindingResult result, RedirectAttributes redirectAttributes) {
        logger.debug("ADD Course with id " + course.getCid());

        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute(
                    "org.springframework.validation.BindingResult.course",
                    result);
            redirectAttributes.addFlashAttribute("course", course);
            this.course = course;
            return "redirect:/course";
        } else {
            logger.debug("ADD Course with id " + course.getCid());
            course.setEnabled(true);

            /*
             * if (course.getAddress().getAid() == null) {
             * addressManager.save(course.getAddress()); }
             */

            if (course.getCid() == null) {
                logger.debug("New course");
                courseManager.save(course);
            } else {
                logger.debug("Update course");
                courseManager.update(course);
                logger.debug("Finished updating course");
            }
            this.course = new Course();
        }
        return "redirect:/admin/course";
    }

    @RequestMapping(value = "/edit/{cid}")
    public String editCourse(@PathVariable("cid") Integer cid) {
        logger.debug("Edit Course with id " + cid);
        course = courseManager.get(cid);
        return "redirect:/admin/course";
    }

    @RequestMapping(value = "/delete/{cid}")
    public String deleteCourse(@PathVariable("cid") Integer cid) {
        logger.debug("Delete Course with id " + cid);
        course = courseManager.get(cid);
        course.setEnabled(false);
        courseManager.update(course);
        course = new Course();
        return "redirect:/admin/course";
    }

    public void setCourseManager(CourseManager courseManager) {
        this.courseManager = courseManager;
    }
}
