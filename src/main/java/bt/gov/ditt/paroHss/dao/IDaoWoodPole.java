package bt.gov.ditt.paroHss.dao;

import bt.gov.ditt.paroHss.dto.CitizenDetailsDTO;
import bt.gov.ditt.paroHss.dto.CommonDto;
import bt.gov.ditt.paroHss.dto.NewTimberDto;
import bt.gov.ditt.paroHss.entitiy.TimberEntity;

import java.util.List;

/**
 * Created by Pema Drakpa on 2/19/2020.
 */
public interface IDaoWoodPole {

    public List<CommonDto> getProductDetails(String cons_desc);

    public List<CommonDto> getUnitDetails(String sl_no, String type);

    public long getServiceId();

    public NewTimberDto saveUpdateApplication(CitizenDetailsDTO dto, NewTimberDto newTimberDto, String applicationNumber, String application_number);

    public String saveTimberdtls(TimberEntity timberEntity);
}
