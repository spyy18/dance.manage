package at.danceandfun.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import at.danceandfun.entity.Absence;
import at.danceandfun.entity.Appointment;
import at.danceandfun.entity.Participant;
import at.danceandfun.entity.Rating;
import at.danceandfun.service.AppointmentManager;
import at.danceandfun.service.CourseManager;
import at.danceandfun.service.CourseParticipantManager;
import at.danceandfun.service.ParticipantManager;
import at.danceandfun.service.PersonManager;
import at.danceandfun.service.RatingManager;
import at.danceandfun.util.PasswordBean;

@Controller
@RequestMapping(value = "/participant")
@SessionAttributes("participant")
@PreAuthorize("hasPermission(#pid, 'owner') or hasPermission(#pid, 'isParent')")
public class ParticipantHomeController {

    private static Logger logger = Logger
            .getLogger(ParticipantHomeController.class);

    @Autowired
    private ParticipantManager participantManager;

    @Autowired
    private CourseManager courseManager;

    @Autowired
    private CourseParticipantManager courseParticipantManager;

    @Autowired
    private AppointmentManager appointmentManager;

    @Autowired
    private RatingManager ratingManager;

    @Autowired
    private PersonManager personManager;

    private Rating rating;

    private PasswordBean passwordBean;

    private boolean editTrue = false;

    @PostConstruct
    public void init() {
        logger.info("INIT ParticipantHomeController");
        passwordBean = new PasswordBean();
    }

    @RequestMapping(value = "/{pid}", method = RequestMethod.GET)
    public String showIndex(ModelMap map, @PathVariable int pid) {
        logger.info("showIndex");
        Participant participant = participantManager.get(pid);

        map.put("participant", participant);
        map.put("enabledCourses", courseParticipantManager
                .getEnabledDistinctCourseParticipants(participant));
        return "participant/index";
    }

    @RequestMapping(value = "/edit/{pid}", method = RequestMethod.GET)
    public String showEdit(ModelMap map, @PathVariable int pid) {
        logger.info("showEdit");
        Participant participant = participantManager.get(pid);

        map.put("participant", participant);
        return "participant/editParticipant";
    }

    @RequestMapping(value = "/edit/{pid}", method = RequestMethod.POST)
    public String updateParticipant(ModelMap map,
            @ModelAttribute("participant") @Valid Participant participant,
            BindingResult result, RedirectAttributes redirectAttributes,
            @PathVariable int pid) {

        if (!participant.getEmail().equals("")
                && !personManager.getPersonByEmail(participant.getEmail(),
                        participant.getPid())
                        .isEmpty()) {
            logger.error("ConstraintViolation for user with ID"
                    + participant.getPid());
            result.rejectValue("email", "email.constraintViolation");
            redirectAttributes.addFlashAttribute(
                    "org.springframework.validation.BindingResult.participant",
                    result);
            redirectAttributes.addFlashAttribute("participant", participant);
            return "participant/editParticipant";
        }

        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute(
                    "org.springframework.validation.BindingResult.participant",
                    result);
            redirectAttributes.addFlashAttribute("participant", participant);
            return "participant/editParticipant";
        }

        logger.info("updateParticipant");
        participantManager.merge(participant);
        return "redirect:/participant/" + pid;

    }

    @RequestMapping(value = "/editPassword/{pid}", method = RequestMethod.GET)
    public String showEditPassword(ModelMap map, @PathVariable int pid) {
        logger.info("showEditPassword");

        map.put("participant", participantManager.get(pid));
        map.put("password", passwordBean);
        return "participant/editPassword";
    }

    @RequestMapping(value = "/editPassword/{pid}", method = RequestMethod.POST)
    public String changePassword(ModelMap map, @PathVariable int pid,
            @ModelAttribute("password") @Valid PasswordBean passwordBean,
            BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute(
                    "org.springframework.validation.BindingResult.password",
                    result);
            redirectAttributes.addFlashAttribute("password", passwordBean);
            this.passwordBean = passwordBean;
            return "participant/editPassword";
        }

        Participant participant = participantManager.get(pid);
        logger.info("Try to change password from user with ID: "
                + participant.getPid());
        passwordBean.setId(participant.getPid());

        if (!personManager.changePassword(passwordBean)) {
            logger.info("OBJECT: " + passwordBean);
            this.passwordBean = passwordBean;
            redirectAttributes.addFlashAttribute("password", passwordBean);
            return "participant/editPassword";
        }

        this.passwordBean = new PasswordBean();
        return "redirect:/participant/" + pid;

    }

    @RequestMapping(value = "/absence/{pid}", method = RequestMethod.GET)
    public String showAbsence(ModelMap map, @PathVariable int pid) {
        logger.info("showAbsence");
        Participant participant = participantManager.get(pid);

        map.put("participant", participant);
        map.put("enabledCourses", courseParticipantManager
                .getEnabledDistinctCourseParticipants(participant));
        return "participant/absenceView";
    }

    @RequestMapping(value = "/absence/save/{slug}/{pid}", method = RequestMethod.POST)
    public String saveAbsence(@PathVariable String slug, @PathVariable int pid,
            HttpServletRequest request, ModelMap map) {
        Participant participant = participantManager.get(pid);

        String reason = request.getParameter("reason");
        Integer appointmentId = Integer.parseInt(request
                .getParameter("appointmentId"));

        Appointment appointment = appointmentManager.get(appointmentId);
        Absence absence = new Absence(participant, appointment, reason);

        logger.info("saveAbsence for course:" + slug + " appointment("
                + appointment + ") cause:" + reason);

        participantManager.mergeAbsence(absence);

        map.put("participant", participant);
        map.put("enabledCourses", courseParticipantManager
                .getEnabledDistinctCourseParticipants(participant));
        return "redirect:/participant/absence/" + pid;
    }

    @RequestMapping(value = "/absence/update/{slug}/{pid}", method = RequestMethod.POST)
    public String deleteAbsence(@PathVariable String slug,
            @PathVariable int pid, HttpServletRequest request, ModelMap map) {
        Participant participant = participantManager.get(pid);
        Integer appointmentId = Integer.parseInt(request
                .getParameter("appointmentId"));
        String enabled = request.getParameter("enabled");
        String reason = request.getParameter("reason");

        Appointment appointment = appointmentManager.get(appointmentId);
        Absence absence = new Absence(participant, appointment, reason);

        if ("false".equals(enabled)) {
            absence.setEnabled(false);
        } else {
            absence.setEnabled(true);
        }

        logger.info("updateAbsence for course:" + slug + " appointment:"
                + appointment + " participant:" + participant);

        participantManager.mergeAbsence(absence);

        map.put("participant", participant);
        map.put("enabledCourses", courseParticipantManager
                .getEnabledDistinctCourseParticipants(participant));
        return "redirect:/participant/absence/" + pid;
    }

    @RequestMapping(value = "/rating/{pid}", method = RequestMethod.GET)
    public String showRating(ModelMap map, @PathVariable int pid) {
        logger.info("showRating");
        Participant participant = participantManager.get(pid);
        participant.setCourseParticipants(courseParticipantManager
                .getEnabledDistinctCourseParticipants(participant));

        if (!editTrue) {
            this.rating = new Rating();
        }

        map.put("rating", this.rating);
        map.addAttribute("ratingList",
                ratingManager.getEnabledRatings(participant));
        map.put("enabledCourses", courseParticipantManager
                .getEnabledDistinctCourseParticipants(participant));
        map.put("participant", participant);
        return "participant/ratingView";
    }

    @RequestMapping(value = "/rating/add/{pid}", method = RequestMethod.POST)
    public String addRating(ModelMap map, @PathVariable int pid,
            @ModelAttribute(value = "rating") @Valid Rating rating,
            BindingResult result, RedirectAttributes redirectAttributes) {
        logger.info("addRating");

        if (result.hasErrors()) {
            logger.error("VALIDATION ERRORS: " + result.getAllErrors().size());
            redirectAttributes.addFlashAttribute(
                    "org.springframework.validation.BindingResult.rating",
                    result);
            redirectAttributes.addFlashAttribute("rating", rating);
            this.rating = rating;
            editTrue = true;
            return "redirect:/participant/rating/" + pid;
        }

        rating.setEnabled(true);
        this.rating = rating;
        ratingManager.persist(rating);
        editTrue = false;
        return "redirect:/participant/rating/" + pid;
    }

    @RequestMapping(value = "rating/delete/{pid}/{rid}")
    public String deleteRating(ModelMap map, @PathVariable("rid") Integer rid,
            @PathVariable("pid") Integer pid) {
        rating = ratingManager.get(rid);
        Participant participant = participantManager.get(pid);
        rating.setEnabled(false);
        ratingManager.merge(rating);
        map.put("participant", participant);
        return "redirect:/participant/rating/" + pid;
    }
}
