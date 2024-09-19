package bt.education.shariHss.controller.publicController;

import bt.education.shariHss.common.ResponseMessage;
import bt.education.shariHss.dto.FeedbackDTO;
import bt.education.shariHss.dto.LoginDTO;
import bt.education.shariHss.dto.NewsDTO;
import bt.education.shariHss.dto.StaffDTO;
import bt.education.shariHss.services.IServicePublic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by Pema Drakpa on 7/06/2023.
 */
@Controller
@RequestMapping("/")
public class ControllerPublic {

    @Autowired
    IServicePublic servicePublic;

    @RequestMapping(method = RequestMethod.GET)
    public String homePage(ModelMap model,HttpServletRequest request) {
        List<NewsDTO> newsDetails = servicePublic.getNewsDetails();
        List<NewsDTO> announcement = servicePublic.getAnnouncementDetails();
        List<StaffDTO> staffDtls = servicePublic.getStaffDtls();
        request.setAttribute("newsDetails", newsDetails);
        request.setAttribute("announcement", announcement);
        request.setAttribute("staffDtls", staffDtls);
        return "shariHss/dashboard/dashboard";
    }

    @ResponseBody
    @RequestMapping(value = "/sendFeedback", method = RequestMethod.GET)
    public ResponseMessage sendFeedback(HttpServletRequest request, FeedbackDTO feedbackDTO) throws IOException, InterruptedException {
        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage = servicePublic.sendFeedback(feedbackDTO,responseMessage);
        return responseMessage;
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login (ModelMap model,HttpServletRequest request,LoginDTO loginDTO) {
        ResponseMessage responseMessage = servicePublic.login(request,loginDTO);

        model.addAttribute("qualificationList", servicePublic.gQualificaitonList());
        model.addAttribute("departmentList", servicePublic.gDepartmentList());
        model.addAttribute("roleList", servicePublic.gRoleList());
        model.addAttribute("designationList", servicePublic.gDesignationList());
        return "shariHss/admin/adminHome";
    }

    @RequestMapping(value = "/admin/updateNews", method = RequestMethod.GET)
    public String updateNews(HttpServletRequest request,ModelMap model) {
        return "shariHss/admin/updateNews";
    }

    @ResponseBody
    @RequestMapping(value = "/updateCurrentNews", method = RequestMethod.GET)
    public ResponseMessage updateCurrentNews(HttpServletRequest request, NewsDTO newsDTO) throws IOException, InterruptedException {
        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage = servicePublic.updateCurrentNews(newsDTO,responseMessage);
        return responseMessage;
    }

    @RequestMapping(value = "/admin/announcement", method = RequestMethod.GET)
    public String announcement(HttpServletRequest request,ModelMap model) {
        return "shariHss/admin/announcement";
    }

    @ResponseBody
    @RequestMapping(value = "/addAnnouncement", method = RequestMethod.GET)
    public ResponseMessage addAnnouncement(HttpServletRequest request, NewsDTO newsDTO) throws IOException, InterruptedException {
        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage = servicePublic.addAnnouncement(newsDTO, responseMessage);
        return responseMessage;
    }

    @RequestMapping(value = "public/initiate/staffProfile", method = RequestMethod.GET)
    public String staffProfile(HttpServletRequest request,ModelMap model) {
        return "/navigation/staffs";
    }
}
