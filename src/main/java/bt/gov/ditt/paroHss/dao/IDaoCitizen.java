package bt.gov.ditt.paroHss.dao;

import bt.gov.ditt.paroHss.dto.NewTimberDto;
import bt.gov.ditt.paroHss.dto.OnlineTimberDTO;
import bt.gov.ditt.paroHss.dto.TimberDetailsDto;
import bt.gov.ditt.paroHss.dto.WorkFlowDto;
import bt.gov.ditt.paroHss.entitiy.PersonalEntity;
import bt.gov.ditt.paroHss.entitiy.TimberEntity;

import javax.servlet.http.HttpServletRequest;
import java.math.BigInteger;
import java.util.List;

/**
 * Created by Santosh on 7/7/2022.
 */
public interface IDaoCitizen {
  public String saveOnlineTimberApplication(PersonalEntity personalEntity);

    public  String saveTimber(TimberEntity timberEntity);

    public  List<NewTimberDto> getDropdownList(String id,String type, HttpServletRequest request);

    public List<OnlineTimberDTO> getApplicationList(String appNo);

    public Integer getApplicationStatus(String appNo);

    public WorkFlowDto getTimberReplacementRequest(String appNo);

    public String submitTimberRR(String appNo, TimberDetailsDto timberDetails);

    public String updateMarkingDate(String appNo, String markingDate);

    public String scheduleSawingPermitDate(String appNo, String sawingPermitDate, String nameOfOperator, String licenseNo, String locationOfSawmill, String rateOfSawing, int mode_of_Swing_Id);

    public BigInteger getExistDateCount(String thisDate, Integer allot_Range_Officer);

    public String updateCompletionDate(String appNo, String completionDate, int completionStatus);

    public Integer getReplacementCount(String appNo);

    public String updateReplacementCount(String appNo);
}
