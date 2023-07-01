package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.dto.NdiDTO;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by Pema Drakpa on 1/24/2020.
 */
public interface IServiceNDI {
    public NdiDTO getPasswordLessLogin(HttpServletRequest request) throws IOException, InterruptedException;
}
