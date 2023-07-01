package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.dto.CommonDto;
import bt.gov.ditt.paroHss.dto.NewTimberDto;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Pema Drakpa on 3/29/2020.
 */
public interface iServiceFireWoodAndFencingPole {
    public List<NewTimberDto> populateTaskList(HttpServletRequest request, String type, String app_type);

    public List<CommonDto>  getRejList();
}
