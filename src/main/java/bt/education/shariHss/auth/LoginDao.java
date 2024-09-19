/**
 * ==========================================================================================
 * Created by PemaDrakpa
 * Created date: 05/07/2023
 * Description:
 * Purpose:
 * ==========================================================================================
 */
package bt.education.shariHss.auth;

import bt.education.shariHss.base.BaseDao;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class LoginDao extends BaseDao {

    //region private variables
    private Query hQuery;
    //endregion

    //region public method

    /**
     * to get the user information while logging in.
     *
     * @param username username
     * @return UserSetupDTO
     */
    @Transactional(readOnly = true)
    public LoginDTO login(String username) {
        /*sqlQuery = properties.getProperty("LoginDao.login");
        hQuery = hibernateQuery(sqlQuery, LoginDTO.class).setParameter("username", username);
        List list = hQuery.list();
        return (LoginDTO) (list.isEmpty()?null:list.get(0));*/
        return null;
    }

    @Transactional(readOnly = true)
    public List<UserRoleDTO> getUserRoleList(String userId) {
       /* sqlQuery = properties.getProperty("LoginDao.getUserRoleList");
        hQuery = hibernateQuery(sqlQuery, UserRoleDTO.class).setParameter("userId", userId);
        return (List<UserRoleDTO>) (hQuery.list());*/
        String updatequery = "";
        try {
            updatequery = getUserRoleList;
            Query query = sqlQuery(updatequery, UserRoleDTO.class).setParameter(1,userId);
            return (List<UserRoleDTO>) (query.list());
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Transactional
    public LoginDTO checkForUserName(String userLogin) {
        /*sqlQuery = properties.getProperty("LoginDao.checkForUserName");
        hQuery = hibernateQuery(sqlQuery, LoginDTO.class).setParameter("username", userLogin);
        List list = hQuery.list();
        return (LoginDTO) (list.isEmpty()?null:list.get(0));*/
        return null;
    }
    //endregion
    private String getUserRoleList = "SELECT b.Id userId, b.SysUserRoleId roleId,c.RoleName FROM sysuserdetails b INNER JOIN sysuserrolemaster c ON c.Id = b.SysUserRoleId WHERE b.EmployeeId =?";
}

