/**
 * ==========================================================================================
 * Created by PemaDrakpa
 * Created date: 05/07/2023
 * Description:
 * Purpose:
 * ==========================================================================================
 */
package bt.education.shariHss.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginService {
    //region private dao
    @Autowired
    LoginDao loginDao;
    //endregion

    //region public method

    /**
     * to get user information while logging in.
     *
     * @param username username
     * @return LoginDTO
     */
    public LoginDTO login(String username) {
        return loginDao.login(username);
    }

    public List<UserRoleDTO> getUserRoleList(String userId) {
        return loginDao.getUserRoleList(userId);
    }

    public LoginDTO checkForUserName(String userLogin) {
        return loginDao.checkForUserName(userLogin);
    }
}
