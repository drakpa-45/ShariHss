package bt.education.shariHss.services;

import bt.education.shariHss.common.ResponseMessage;
import bt.education.shariHss.dao.IDaoPublic;
import bt.education.shariHss.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.math.BigInteger;
import java.util.List;
import java.util.UUID;

/**
 * Created by Pema Drakpa on 23/06/2023.
 */
@Service
public class ServicePublic implements IServicePublic{

    @Autowired
    IDaoPublic daoPublic;

    @Transactional
    public ResponseMessage sendFeedback(FeedbackDTO feedbackDTO, ResponseMessage responseMessage) {
        String uuid = getRandomGeneratedId();
        feedbackDTO.setUuid(uuid);
        String savedMsg=daoPublic.sendFeedback(feedbackDTO);
        responseMessage.reset();
        responseMessage.setStatus(1);
        responseMessage.setText("Thank you for your feedback!");

       /* StringBuffer table = new StringBuffer();

        table.append("Dear Admin, <br>" +
                "Subject:" + feedbackDTO.getSubject());
        table.append("Message:"+feedbackDTO.getMessage()+
                "From:"+ feedbackDTO.getUsername()+ "-" + feedbackDTO.getEmail()+
                "Email Date:<b>" + new Date() + "</b> <br><br>"+
                "Thank you.<br>");
        String mailContent = table.toString();
        String senderMail = feedbackDTO.getEmail();
        try {
            MailSender.sendMail("pemadrakpa1996@gmail.com", senderMail, null, mailContent, "Feedback send successfully!");
        } catch (Exception e) {
            e.printStackTrace();
        }*/

        return responseMessage;
    }

    @Override
    @Transactional
    public ResponseMessage login(HttpServletRequest request, LoginDTO loginDTO) {
        ResponseMessage responseMessage = new ResponseMessage();
        BigInteger userExist = daoPublic.checkIfExistUser(loginDTO.getUserId());
        if (userExist.intValue()<0) {
            throw new UsernameNotFoundException("Wrong username or password.");
        }
        responseMessage.setStatus(1);
        return responseMessage;
    }

    @Override
    @Transactional
    public ResponseMessage updateCurrentNews(NewsDTO newsDTO, ResponseMessage responseMessage) {
        String uuid = getRandomGeneratedId();
        newsDTO.setUuid(uuid);
        String savedMsg=daoPublic.updateCurrentNews(newsDTO);
        responseMessage.reset();
        responseMessage.setStatus(1);
        responseMessage.setText("Current News Submitted Successfully!");
        return responseMessage;
    }

    @Override
    @Transactional
    public ResponseMessage addAnnouncement(NewsDTO newsDTO, ResponseMessage responseMessage) {
        String uuid = getRandomGeneratedId();
        newsDTO.setUuid(uuid);
        String savedMsg=daoPublic.addAnnouncement(newsDTO);
        responseMessage.reset();
        responseMessage.setStatus(1);
        responseMessage.setText("Announcement added Successfully!");
        return responseMessage;
    }

    @Override
    @Transactional
    public List<NewsDTO> getAnnouncementDetails() {
        return daoPublic.getAnnouncementDetails();
    }

    @Override
    @Transactional
    public List<StaffDTO> getStaffDtls() {
        return daoPublic.getStaffDtls();
    }

    @Override
    @Transactional
    public List<DropdownDTO> gQualificaitonList() {
        return daoPublic.gQualificaitonList();
    }

    @Override
    @Transactional
    public List<DropdownDTO> gDepartmentList() {
        return daoPublic.gDepartmentList();
    }

    @Override
    @Transactional
    public List<DropdownDTO> gRoleList() {
        return daoPublic.gRoleList();
    }

    @Override
    @Transactional
    public List<DropdownDTO> gDesignationList() {
        return daoPublic.gDesignationList();
    }

    @Transactional
    public List<NewsDTO> getNewsDetails() {
        return daoPublic.getNewsDeatils();
    }

    public String getRandomGeneratedId(){
        return UUID.randomUUID().toString();
    }
}
