package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.dto.CitizenDetailsDTO;
import bt.gov.ditt.paroHss.dto.CommonDto;
import bt.gov.ditt.paroHss.dto.NewTimberDto;

import javax.servlet.http.HttpServletRequest;
import java.math.BigInteger;
import java.util.List;

/**
 * Created by Pema Drakpa on 2/19/2020.
 */
public interface IServiceWoodPole {
    public List<CommonDto> getProductDetails(String cons_desc);

    public List<CommonDto> getUnitDetails(String sl_no, String type);

    public NewTimberDto saveFinalApplciationDetails(CitizenDetailsDTO dto, NewTimberDto newTimberDto, String type, HttpServletRequest request);

    public BigInteger getYearValidation(String sl_no, String house_no);
}
