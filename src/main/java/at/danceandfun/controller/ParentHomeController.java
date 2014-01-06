package at.danceandfun.controller;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import at.danceandfun.entity.Parent;
import at.danceandfun.service.ParentManager;

@Controller
@RequestMapping(value = "/parent")
public class ParentHomeController {

    private static Logger logger = Logger.getLogger(ParentHomeController.class);

    @Autowired
    private ParentManager parentManager;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String showIndex(ModelMap map) {
        logger.debug("showIndex");
        Parent parent = getLoggedInParent();

        map.put("user", parent);
        return "parent/index";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String showEdit(ModelMap map) {
        logger.debug("showEdit");
        Parent parent = getLoggedInParent();

        map.put("parent", parent);
        return "parent/editParent";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updateParent(ModelMap map,
            @ModelAttribute("parent") @Valid Parent parent,
            BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute(
                    "org.springframework.validation.BindingResult.participant",
                    result);
            redirectAttributes.addFlashAttribute("parent", parent);
            return "redirect:/parent/edit";
        }

        logger.debug("updateParent");
        parentManager.merge(parent);
        return "redirect:/parent";

    }

    private Parent getLoggedInParent() {
        Parent parent = (Parent) SecurityContextHolder.getContext()
                .getAuthentication().getPrincipal();
        return parentManager.get(parent.getPid());
    }
}
