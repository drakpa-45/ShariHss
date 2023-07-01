package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.common.ResponseMessage;
import bt.gov.ditt.paroHss.dto.FeedbackDTO;

/**
 * Created by Pema Drakpa on 1/24/2020.
 */
public interface IServicePublic {
    public ResponseMessage sendFeedback(FeedbackDTO feedbackDTO, ResponseMessage responseMessage);
}
