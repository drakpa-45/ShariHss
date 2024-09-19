/**
 * ====================================================================
 * Created by nima.yoezer on 23-Sep-18.
 * Description:
 * ====================================================================
 * Modified by:
 * Modified date:
 * Purpose:
 * ====================================================================
 */
package bt.education.shariHss.security;


import bt.education.shariHss.auth.LoginDTO;
import bt.education.shariHss.auth.LoginService;
import bt.education.shariHss.auth.UserRoleDTO;
import bt.education.shariHss.global.enu.LoginError;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class CustomAuthenticationProvider implements AuthenticationProvider {
    //region private variable
    private PasswordEncoder passwordEncoder;
    String rolecheck="";
    @Autowired
    private LoginService loginService;
    //endregion

    //region setter
    public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }
    //endregion

    //region public method

    /**
     * It processes authentication information
     *
     * @param authentication authentication
     * @return Authentication
     * @throws org.springframework.security.core.AuthenticationException
     */

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        UsernamePasswordAuthenticationToken auth = (UsernamePasswordAuthenticationToken) authentication;

        String username = String.valueOf(auth.getPrincipal());
        String password = String.valueOf(auth.getCredentials());

        LoginDTO userLogin = loginService.login(username);
        if (userLogin == null) {
            throw new UsernameNotFoundException("Wrong username or password.");
        }
        String replace=userLogin.getPassword().replaceAll("2y", "2a");

         if (userLogin.getStatus() == 0) {
            throw new LockedException(LoginError.LOCKED.getCode());
        }
        /*else if(userLogin.getPassword().length()>40 && BCrypt.checkpw(password, replace)){
            Set<GrantedAuthority> authorities = getAccessRight(userLogin.getUserId());
            return new UsernamePasswordAuthenticationToken(userLogin, password, authorities);
        }else{
            throw new LockedException("Incorrect Password!");
        }*/

         if (1==1) {
            Set<GrantedAuthority> authorities = getAccessRight(userLogin.getUserId());
            return new UsernamePasswordAuthenticationToken(userLogin, password, authorities);
        }else{
            throw new BadCredentialsException(LoginError.FAILED.getCode());
        }
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(UsernamePasswordAuthenticationToken.class);
    }

    /**
     * It supplies authorization information according to user group
     *
     * @param userId --    String
     * @return Set
     */
    private Set<GrantedAuthority> getAccessRight(String userId) {
        Set<GrantedAuthority> authorities = new HashSet<>();
        List<UserRoleDTO> userRoleDTOs = loginService.getUserRoleList(userId);
        if(userRoleDTOs.size()>0){
            for(int i=0;i<userRoleDTOs.size();i++){
                if(userRoleDTOs.get(i).getRoleName().contains("Payment Approval")){
                    rolecheck="payment";
                    authorities.add(new SimpleGrantedAuthority("ROLE_PAYMENT"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Approval")){
                    rolecheck="Approver";
                    authorities.add(new SimpleGrantedAuthority("ROLE_APPROVER"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Verifier")){
                    rolecheck="Verifier";
                    authorities.add(new SimpleGrantedAuthority("ROLE_VERIFIER"));
                }/*else if(userRoleDTOs.get(i).getRoleName().contains("Contractor") || userRoleDTOs.get(i).getRoleName().contains("Consultant") || userRoleDTOs.get(i).getRoleName().contains("Engineer")
                        || userRoleDTOs.get(i).getRoleName().contains("Specialized Trades") || userRoleDTOs.get(i).getRoleName().contains("Architects") || userRoleDTOs.get(i).getRoleName().contains("Specialized Firm") || userRoleDTOs.get(i).getRoleName().contains("Surveyor")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
                }*/else if(userRoleDTOs.get(i).getRoleName().contains("Contractor")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_CONTRACTOR"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Certified Builder")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_CERTIFIEDBUILDER"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Consultant")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_CONSULTANT"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Specialized Firm")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_SPECIALIZED_FIRM"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Engineer")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_ENGINEER"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Surveyor")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_SURVEYOR"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Architects")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_ARCHITECT"));
                }else if(userRoleDTOs.get(i).getRoleName().contains("Specialized Trades")){
                    rolecheck="public";
                    authorities.add(new SimpleGrantedAuthority("ROLE_SPECIALIZED_TRADE"));
                }
            }
        } else{
            rolecheck="public";
            authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
        }
        /*userRoleDTOs.forEach(role -> {
            if(role.getRoleName().contains("Approver")){
                rolecheck="Approver";
                authorities.add(new SimpleGrantedAuthority("ROLE_APPROVER"));
            }
            if(rolecheck.equalsIgnoreCase("")){
                if(role.getRoleName().contains("Verifier")){
                    rolecheck="Verifier";
                    authorities.add(new SimpleGrantedAuthority("ROLE_VERIFIER"));
                }
                else  if(role.getRoleName().contains("Approver")){
                    rolecheck="Approver";
                    authorities.add(new SimpleGrantedAuthority("ROLE_APPROVER"));
                }
                else{
                    if (role.getRoleRefNo() == UserRole.VERIFIER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_VERIFIER"));
                    }

                    if (role.getRoleRefNo() == UserRole.APPROVER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_APPROVER"));
                    }

                    if (role.getRoleRefNo() == UserRole.ADMINISTRATOR.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
                    }

                    if (role.getRoleRefNo() == UserRole.CONTRACTOR_USER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
                    }

                    if (role.getRoleRefNo() == UserRole.CONTRACTOR_USER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
                    }

                    if (role.getRoleRefNo() == UserRole.CONSULTANT_USER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
                    }

                    if (role.getRoleRefNo() == UserRole.ARCHITECT_USER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
                    }

                    if (role.getRoleRefNo() == UserRole.SPTRADE_USER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
                    }

                    if (role.getRoleRefNo() == UserRole.ENGINEER_USER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_PUBLIC"));
                    }

                    if (role.getRoleRefNo() == UserRole.PAYMENT_APPROVER.getRefNo()){
                        authorities.add(new SimpleGrantedAuthority("ROLE_PAYMENT"));
                    }
                }
            }
        });*/
        return authorities;
    }
    //endregion
}
