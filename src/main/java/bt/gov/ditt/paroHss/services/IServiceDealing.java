package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.dto.CommonDto;
import bt.gov.ditt.paroHss.dto.ListDto;
import bt.gov.ditt.paroHss.dto.WorkFlowDto;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Pema Drakpa on 2/21/2020.
 */
public interface IServiceDealing {
    public WorkFlowDto rejectApplication(WorkFlowDto workFlowDto, HttpServletRequest request);

    public WorkFlowDto upadteClaimedApp(WorkFlowDto workFlowDto, ListDto listDto, HttpServletRequest request);

    public List<CommonDto> getRejList();

    public String getRejReason(WorkFlowDto workFlowDto);

    public WorkFlowDto upadteClaimedPLApp(WorkFlowDto workFlowDto, ListDto listDto, HttpServletRequest request);

    public List<CommonDto> getPRLRejList();
}
