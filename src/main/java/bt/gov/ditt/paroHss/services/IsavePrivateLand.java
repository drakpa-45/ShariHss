package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.dto.CitizenDetailsDTO;
import bt.gov.ditt.paroHss.dto.NewTimberDto;
import bt.gov.ditt.paroHss.dto.WorkFlowDto;
import bt.gov.ditt.paroHss.entitiy.DocumentEntity;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by USER on 4/8/2020.
 */
public interface IsavePrivateLand {
    public String savePrivateLand(CitizenDetailsDTO dto, NewTimberDto cdto, HttpServletRequest request);

    public DocumentEntity saveDoc(MultipartFile[] files, String insertDetails, NewTimberDto cdto);

    public WorkFlowDto getapplicationDetails(HttpServletRequest request, String application_details);


    public List<NewTimberDto> getRangeOffice(String div_id, NewTimberDto dto);

    public WorkFlowDto getappDetails(HttpServletRequest request, String application_details);

    public List<NewTimberDto> getLandCategory();

    public List<NewTimberDto> getForestProduce();
}
