package bt.gov.ditt.paroHss.controller.publicController;

import bt.gov.ditt.paroHss.common.ResponseMessage;
import bt.gov.ditt.paroHss.dto.FeedbackDTO;
import bt.gov.ditt.paroHss.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

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
        return "shariHss/dashboard/dashboard";
    }

    @ResponseBody
    @RequestMapping(value = "/sendFeedback", method = RequestMethod.GET)
    public ResponseMessage sendFeedback(HttpServletRequest request, FeedbackDTO feedbackDTO) throws IOException, InterruptedException {
        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage = servicePublic.sendFeedback(feedbackDTO,responseMessage);
        return responseMessage;
    }

    @RequestMapping(value = "public/initiate/aboutUs", method = RequestMethod.GET)
    public String aboutUs(HttpServletRequest request,ModelMap model) {
        return "/navigation/aboutUs";
    }

    @RequestMapping(value = "public/initiate/staffProfile", method = RequestMethod.GET)
    public String staffProfile(HttpServletRequest request,ModelMap model) {
        return "/navigation/staffs";
    }

}
