package bt.education.shariHss.dao;

import bt.education.shariHss.dto.DropdownDTO;
import bt.education.shariHss.dto.FeedbackDTO;
import bt.education.shariHss.dto.NewsDTO;
import bt.education.shariHss.dto.StaffDTO;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by Pema Drakpa on 03/07/2023.
 */
public interface IDaoPublic {

    public List<NewsDTO> getNewsDeatils();

    public String sendFeedback(FeedbackDTO feedbackDTO);

    public BigInteger checkIfExistUser(String userId);

    public String updateCurrentNews(NewsDTO newsDTO);

    public String addAnnouncement(NewsDTO newsDTO);

    public List<NewsDTO> getAnnouncementDetails();

    public List<StaffDTO> getStaffDtls();

    public List<DropdownDTO> gQualificaitonList();

    public List<DropdownDTO> gDepartmentList();

    public List<DropdownDTO> gRoleList();

    public List<DropdownDTO> gDesignationList();
}
