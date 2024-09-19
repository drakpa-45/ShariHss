package bt.education.shariHss.services;

import bt.education.shariHss.common.ResponseMessage;
import bt.education.shariHss.dto.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Pema Drakpa on 02/07/2023.
 */
public interface IServicePublic {

    public List<NewsDTO> getNewsDetails();

    public ResponseMessage sendFeedback(FeedbackDTO feedbackDTO, ResponseMessage responseMessage);

    public ResponseMessage login(HttpServletRequest request, LoginDTO loginDTO);

    public ResponseMessage updateCurrentNews(NewsDTO newsDTO, ResponseMessage responseMessage);

    public ResponseMessage addAnnouncement(NewsDTO newsDTO, ResponseMessage responseMessage);

    public List<NewsDTO> getAnnouncementDetails();

    public List<StaffDTO> getStaffDtls();

    public List<DropdownDTO> gQualificaitonList();

    public List<DropdownDTO> gDepartmentList();

    public List<DropdownDTO> gRoleList();

    public List<DropdownDTO> gDesignationList();
}
