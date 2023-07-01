package bt.gov.ditt.paroHss.dto;

/**
 * ====================================================================
 * Created by Pema Drakpa on 25/06/2023.
 * Description:
 * ====================================================================
 * Modified by:
 * Modified date:
 * Purpose:
 * ====================================================================
 */
public class FeedbackDTO {
    private String username;
    private String email;
    private String subject;
    private String message;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
