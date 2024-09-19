package bt.education.shariHss.dao;

import bt.education.shariHss.base.BaseDao;
import bt.education.shariHss.dto.DropdownDTO;
import bt.education.shariHss.dto.FeedbackDTO;
import bt.education.shariHss.dto.NewsDTO;
import bt.education.shariHss.dto.StaffDTO;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Pema Drakpa on 03/07/2023.
 */

@Repository
public class DaoPublic extends BaseDao implements IDaoPublic {

    public List<NewsDTO> getNewsDeatils() {
       List<NewsDTO> newsDTO = new ArrayList<NewsDTO>();
        String sqlQuery = "";
        try {
            sqlQuery = NEWSDETAILS;
            Query query = sqlQuery(sqlQuery, NewsDTO.class);
            newsDTO = query.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return newsDTO;
    }

    @Override
    public String sendFeedback(FeedbackDTO feedbackDTO) {
        try {
            String sqlQuery =INSERTFEEDBACK;
            org.hibernate.Query hQuery = hibernateQuery(sqlQuery).setParameter(1, feedbackDTO.getUuid()).setParameter(2,feedbackDTO.getUsername()).setParameter(3,feedbackDTO.getEmail())
                    .setParameter(4,feedbackDTO.getSubject()).setParameter(5,feedbackDTO.getMessage());
            int svtladt = hQuery.executeUpdate();
            if (svtladt > 0) {
                return "Success";
            } else {
                return "fail";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }

    @Override
    public BigInteger checkIfExistUser(String userId) {
        String sqlQuery = USERCOUNT;
        org.hibernate.Query hQuery = hibernateQuery(sqlQuery).setParameter(1,userId);
        return (BigInteger) hQuery.list().get(0);
    }

    @Override
    public String updateCurrentNews(NewsDTO newsDTO) {
        try {
            String sqlQuery =UPATECURRENTNEWS;
            org.hibernate.Query hQuery = hibernateQuery(sqlQuery).setParameter(1, newsDTO.getUuid()).setParameter(2,newsDTO.getTitle()).setParameter(3,newsDTO.getContent())
                    .setParameter(4,newsDTO.getContentMore()).setParameter(5,newsDTO.getAuthor()).setParameter(6,newsDTO.getPublishedOn()).setParameter(7,newsDTO.getGoogleImageId());
            int svtladt = hQuery.executeUpdate();
            if (svtladt > 0) {
                return "Success";
            } else {
                return "fail";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }

    @Override
    public String addAnnouncement(NewsDTO newsDTO) {
        try {
            String sqlQuery =ADDANNOUNCEMENT;
            org.hibernate.Query hQuery = hibernateQuery(sqlQuery).setParameter(1, newsDTO.getUuid()).setParameter(2,newsDTO.getTitle()).setParameter(3,newsDTO.getContent())
                    .setParameter(4, newsDTO.getGoogleImageId());
            int svtladt = hQuery.executeUpdate();
            if (svtladt > 0) {
                return "Success";
            } else {
                return "fail";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }

    @Override
    public List<NewsDTO> getAnnouncementDetails() {
        List<NewsDTO> newsDTO = new ArrayList<NewsDTO>();
        String sqlQuery = "";
        try {
            sqlQuery = ANNOUNCEMENTDETAILS;
            Query query = sqlQuery(sqlQuery, NewsDTO.class);
            newsDTO = query.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return newsDTO;
    }

    @Override
    public List<StaffDTO> getStaffDtls() {
        List<StaffDTO> staffDTO = new ArrayList<StaffDTO>();
        String sqlQuery = "";
        try {
            sqlQuery = STAFFDETAILS;
            Query query = sqlQuery(sqlQuery, StaffDTO.class);
            staffDTO = query.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return staffDTO;
    }

    @Override
    public List<DropdownDTO> gQualificaitonList() {
        List<DropdownDTO> dropdownDTOs = new ArrayList<DropdownDTO>();
        String sqlQuery = "";
        try {
            sqlQuery = QUALIFICATIONLIST;
            Query query = sqlQuery(sqlQuery, DropdownDTO.class);
            dropdownDTOs = query.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return dropdownDTOs;
    }

    @Override
    public List<DropdownDTO> gDepartmentList() {
        List<DropdownDTO> dropdownDTOs = new ArrayList<DropdownDTO>();
        String sqlQuery = "";
        try {
            sqlQuery = DEPARTMENTLIST;
            Query query = sqlQuery(sqlQuery, DropdownDTO.class);
            dropdownDTOs = query.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return dropdownDTOs;
    }

    @Override
    public List<DropdownDTO> gRoleList() {
        List<DropdownDTO> dropdownDTOs = new ArrayList<DropdownDTO>();
        String sqlQuery = "";
        try {
            sqlQuery = ROLELIST;
            Query query = sqlQuery(sqlQuery, DropdownDTO.class);
            dropdownDTOs = query.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return dropdownDTOs;
    }

    @Override
    public List<DropdownDTO> gDesignationList() {
        List<DropdownDTO> dropdownDTOs = new ArrayList<DropdownDTO>();
        String sqlQuery = "";
        try {
            sqlQuery = DESIGNATIONLIST;
            Query query = sqlQuery(sqlQuery, DropdownDTO.class);
            dropdownDTOs = query.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return dropdownDTOs;
    }

    private String QUALIFICATIONLIST="SELECT a.Id value,a.DepartmentName text FROM shsdepartment a ORDER BY a.DepartmentName ASC";
    private String DEPARTMENTLIST="SELECT a.Id value,a.DepartmentName text FROM shsdepartment a ORDER BY a.DepartmentName ASC";
    private String ROLELIST="SELECT a.Id value,a.RoleName text FROM sysuserrolemaster a ORDER BY a.RoleName ASC";
    private String DESIGNATIONLIST="SELECT a.Id value,a.RoleName text FROM sysuserrolemaster a ORDER BY a.RoleName ASC";


    private String USERCOUNT="SELECT COUNT(*) FROM sysuser s WHERE s.UserId=?";

    private String NEWSDETAILS="SELECT s.Id uuid,s.Title title,s.Content content,s.ContentMore contentMore,s.Author author,DATE_FORMAT(s.PublishedOn,'%d-%M-%Y') publishedOn,s.GoogleImageId googleImageId FROM shsnewsdetails s ORDER BY s.PublishedOn DESC";
    private String ANNOUNCEMENTDETAILS="SELECT s.Id uuid,s.Title title,s.Content content,s.Attachment googleImageId FROM shsannouncementdetails s";

    private String INSERTFEEDBACK="INSERT INTO shsfeedback (Id, SenderName, SenderEmail, Subject, Message) VALUES(?, ?, ?, ?, ?)";
    private String UPATECURRENTNEWS="INSERT INTO shsnewsdetails (Id, Title, Content, ContentMore, Author,PublishedOn,GoogleImageId) VALUES(?, ?, ?, ?, ?,?,?);";
    private String ADDANNOUNCEMENT="INSERT INTO shsnewsdetails (Id, Title, Content,Attachment) VALUES(?, ?, ?, ?);";
    private String STAFFDETAILS="SELECT Id uuid,EmployeeId employeeId,Name name,Designation designation,Qualification qualification,Subject subject,ContactNumber contactNumber,Email email,DepartmentID departmentID FROM shsteacherdetails";
}