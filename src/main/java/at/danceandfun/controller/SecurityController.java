package at.danceandfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import at.danceandfun.entity.Admin;
import at.danceandfun.entity.Parent;
import at.danceandfun.entity.Participant;
import at.danceandfun.entity.Person;
import at.danceandfun.entity.SuperUser;
import at.danceandfun.entity.Teacher;
import at.danceandfun.service.PersonManager;

@Controller
public class SecurityController {

    private static Logger logger = Logger.getLogger(SecurityController.class);

    @Autowired
    private PersonManager personManager;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap map) {
        logger.debug("LOGIN");

        return "login";
    }

    @RequestMapping("/default")
    public String defaultAfterLogin(HttpServletRequest request) {
        HttpSession session = request.getSession();

        if (request.isUserInRole("ROLE_ADMIN")) {
            Admin admin = (Admin) SecurityContextHolder.getContext()
                    .getAuthentication().getPrincipal();
            session.setAttribute("user", admin);
            session.setAttribute("userType", "admin");
            session.setAttribute("editProfileLink", "#");
            session.setAttribute("homeLink", "/admin");

            return "redirect:/admin";
        }
        if (request.isUserInRole("ROLE_PARTICIPANT")) {
            Participant participant = (Participant) SecurityContextHolder
                    .getContext().getAuthentication().getPrincipal();
            Integer pid = participant.getPid();
            session.setAttribute("user", participant);
            session.setAttribute("userType", "participant");
            session.setAttribute("editProfileLink", "/participant/edit/" + pid);
            session.setAttribute("homeLink", "/participant/" + pid);

            return "redirect:/participant/" + pid;
        }
        if (request.isUserInRole("ROLE_PARENT")) {
            Parent parent = (Parent) SecurityContextHolder.getContext()
                    .getAuthentication().getPrincipal();
            session.setAttribute("user", parent);
            session.setAttribute("userType", "parent");
            session.setAttribute("editProfileLink", "/parent/edit");
            session.setAttribute("homeLink", "/parent");

            return "redirect:/parent";
        }
        if (request.isUserInRole("ROLE_TEACHER")) {
            Teacher teacher = (Teacher) SecurityContextHolder.getContext()
                    .getAuthentication().getPrincipal();
            session.setAttribute("user", teacher);
            session.setAttribute("userType", "teacher");
            session.setAttribute("editProfileLink", "#");
            session.setAttribute("homeLink", "#");

            return "redirect:/teacher";
        }
        if (request.isUserInRole("ROLE_SUPERUSER")) {
            SuperUser superUser = (SuperUser) SecurityContextHolder
                    .getContext().getAuthentication().getPrincipal();
            session.setAttribute("user", superUser);
            session.setAttribute("userType", "superUser");
            session.setAttribute("editProfileLink", "#");
            session.setAttribute("homeLink", "/admin");

            return "redirect:/admin";
        }

        if (session != null) {
            session.invalidate();
        }
        SecurityContextHolder.clearContext();
        logger.error("role does not exists. redirect to login!");
        return "redirect:/login";
    }

    @RequestMapping(value = "error/accessDenied", method = RequestMethod.GET)
    public String accessDenied() {
        logger.info("accessDenied");
        return "error/accessDenied";
    }

    @RequestMapping(value = "error/error404")
    public String get404() {
        return "error/error404";
    }

    @RequestMapping(value = "/validation", method = RequestMethod.GET)
    public String checkAccess(@RequestParam("access") String access,
            ModelMap model) {

        Person person = personManager.getPersonByActivationUUID(access);
        if (person != null) {
            if (!person.isActivated()) {
                person.setActivated(true);
                personManager.update(person);
                model.put("statuscode", 0);
            }else{
                model.put("statuscode", 1);
            }

        } else {
            model.put("statuscode", 2);
        }
        return "validation";
    }
}
