package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.common.ResponseMessage;
import bt.gov.ditt.paroHss.dto.FeedbackDTO;
import bt.gov.ditt.paroHss.global.global.MailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by Pema Drakpa on 23/06/2023.
 */
@Service
public class ServicePublic implements IServicePublic{

    @Override
    @Transactional
    public ResponseMessage sendFeedback(FeedbackDTO feedbackDTO, ResponseMessage responseMessage) {
        responseMessage.reset();
        responseMessage.setStatus(1);
        responseMessage.setText("Thank you for your feedback!");

        StringBuffer table = new StringBuffer();

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
        }

        return responseMessage;
    }
}
