package bt.gov.ditt.paroHss.services;

import bt.gov.ditt.paroHss.dto.NdiDTO;
import bt.gov.ditt.paroHss.dto.UserRolePrivilegeDTO;
import io.nats.client.Connection;
import io.nats.client.Dispatcher;
import io.nats.client.Nats;
import io.nats.client.Options;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.awt.*;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Date;
import java.util.ResourceBundle;
import java.util.concurrent.atomic.AtomicReference;

/**
 * Created by Pema Drakpa on 1/24/2020.
 */
@Service
public class ServiceNDI implements IServiceNDI{

    @Autowired
    private APIService api;

    @Override
    @Transactional
    public NdiDTO getPasswordLessLogin(HttpServletRequest request) throws IOException, InterruptedException {
        HttpSession session = request.getSession();
        RestTemplate template = new RestTemplate();
        String requestJson = "{\n" +
                "  \"proofName\": \"verifyUser\",\n" +
                "  \"proofAttributes\": [\n" +
                "    {\n" +
                "      \"name\": \"Full Name\",\n" +
                "      \"restrictions\": [\n" +
                "        {\n" +
                "          \"schema_id\": \"2acnD7masG23MBd7nn4xna:2:Foundational ID:1.0.1\"\n" +
                "        }\n" +
                "      ]\n" +
                "    },\n" +
                "    {\n" +
                "      \"name\": \"ID Number\",\n" +
                "      \"restrictions\": [\n" +
                "        {\n" +
                "          \"schema_id\": \"2acnD7masG23MBd7nn4xna:2:Foundational ID:1.0.1\"\n" +
                "        }\n" +
                "      ]\n" +
                "    },\n" +
                "    {\n" +
                "      \"name\": \"Mobile Number\",\n" +
                "      \"restrictions\": [],\n" +
                "      \"self_attest_allowed\": true\n" +
                "    }\n" +
                "  ],\n" +
                "  \"forRealtionship\": \"\",\n" +
                "  \"threadId\": \"\"\n" +
                "}";

        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        headers.setContentType(MediaType.APPLICATION_JSON);

        ResourceBundle resourceBundle1 = ResourceBundle.getBundle("wsEndPointURL_en_US");
        String url =resourceBundle1.getString("getVerifyProofRequest.endPointProofRequestURL");

        HttpEntity<String> requestEntity =
                new HttpEntity<>(requestJson,headers);
        ResponseEntity<String> response =
                template.exchange(url, HttpMethod.POST, requestEntity,
                        String.class);
        System.out.println(response.getBody());
//       ObjectMapper objectMapper = new ObjectMapper();
        JSONObject obj = new JSONObject(response.getBody());
        JSONObject data = obj.getJSONObject("data");
        String proofRequestURL = data.get("proofRequestURL").toString();
        String proofRequestThreadId = data.get("proofRequestThreadId").toString();
        String deepLinkURL = data.get("deepLinkURL").toString();
        NdiDTO ndiDTO = new NdiDTO();

//         ndiDTO = objectMapper.readValue(response.getBody(), NdiDTO.class);

        ndiDTO.setRelationDID("");
        ndiDTO.setDeepLinkURL(deepLinkURL);
        ndiDTO.setProofRequestURL(proofRequestURL);//        ndiDTO.setInviteURL("inviteURL");
        ndiDTO.setProofRequestThreadId(proofRequestThreadId);
        getProofRequestStatus(proofRequestThreadId,request); //listen to nats
//        getRelationshipReused(threadId);
return ndiDTO;
    }


    private String getProofRequestStatus(String threadId, HttpServletRequest request) throws IOException, InterruptedException {
        AtomicReference<String> returnMessage = new AtomicReference<>("");
        HttpSession session = request.getSession();
        // String natsURL = "nats://18.142.249.134:4222";

        ResourceBundle resourceBundle1 = ResourceBundle.getBundle("wsEndPointURL_en_US");
        String natsURL =resourceBundle1.getString("getNats.endPointNATSURL");

        String[] array = new String[]{natsURL};
        Options opts = new Options.Builder().servers(array).maxReconnects(-1).build();
        Connection connect = Nats.connect(opts);
        Date expirationDate = null;
        if(connect.getStatus().toString().equalsIgnoreCase("CONNECTED")){
            // Set the expiration time
            long expirationTimeMillis = System.currentTimeMillis() + 180000; // 3 minutes
            expirationDate = new Date(expirationTimeMillis);
            System.out.println("Expiration Date: " + expirationDate);
        }else{
            System.out.println("Could not connect to nats: with exception");
        }
        Dispatcher dispatcher = null;
        final Date finalExpirationDate = expirationDate;
        final Dispatcher finalDispatcher = dispatcher;

        if(session.getAttribute("userdetail") !=null) {
            //redirect do system URL
            String redirectUrl = "http://localhost:8082/paroHss/loginDashboard";
            try {
                Desktop.getDesktop().browse(new URI(redirectUrl));
            } catch (IOException e) {
                e.printStackTrace();
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }
        }else{
            dispatcher = connect.createDispatcher(message -> {
                String s = new String(message.getData(), StandardCharsets.UTF_8);
                JSONObject obj = new JSONObject(s);

                JSONObject data = obj.getJSONObject("data");
                JSONObject requestedPresentation = data.getJSONObject("requested_presentation");
                JSONObject selfAttested = requestedPresentation.getJSONObject("self_attested_attrs");
                JSONObject revealedAttr = requestedPresentation.getJSONObject("revealed_attrs");

                String fullName = revealedAttr.getJSONObject("Full Name").getString("value");
                String IDNumber = revealedAttr.getJSONObject("ID Number").getString("value");
                String mobileNumber = selfAttested.get("Mobile Number").toString();

//            JSONObject data = obj.getJSONObject("data");
//            String status = data.getString("status");
//            String relationshipDid = data.getString("relationDid");

                HttpHeaders headers = new HttpHeaders();
                headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
                headers.setContentType(MediaType.APPLICATION_JSON);
                RestTemplate template = new RestTemplate();

                String url =resourceBundle1.getString("getVerifyProofRequest.endPointProofRequestURL");

                HttpEntity<String> requestEntity = new HttpEntity<>(headers);
                ResponseEntity<String> response = template.exchange(url+"?threadId="+threadId, HttpMethod.GET, requestEntity, String.class);

                JSONObject object = new JSONObject(response.getBody());
                JSONObject fetcheddata = object.getJSONObject("data");
                String status = fetcheddata.get("status").toString();

                if(status.equalsIgnoreCase("proofValidated")) {
                    UserRolePrivilegeDTO dto = new UserRolePrivilegeDTO();

                    // Check if the token has expired
                    boolean isExpired = finalExpirationDate.before(new Date());

                    if(isExpired==false){
                        //GENERATE TOKEN WITH CID AND SAVED
                        dto.setCid(IDNumber);
                        dto.setFullName(fullName);
                        dto.setMobileNo(mobileNumber);
                        session.setAttribute("userdetail", dto);

                        //redirect do system URL
                        String redirectUrl = "http://localhost:8082/paroHss/loginDashboard";
                        try {
                            Desktop.getDesktop().browse(new URI(redirectUrl));
                            finalDispatcher.unsubscribe(threadId);
                        }catch (IOException e) {
                            e.printStackTrace();
                        } catch (URISyntaxException e) {
                            e.printStackTrace();
                        }
                    }else{
                        //redirect do system URL
                        String redirectUrl = "http://localhost:8082/paroHss/";
                        try {
                            Desktop.getDesktop().browse(new URI(redirectUrl));
                            finalDispatcher.unsubscribe(threadId);
                        } catch (IOException e) {
                            e.printStackTrace();
                        } catch (URISyntaxException e) {
                            e.printStackTrace();
                        }
                    }
                }
            });
        }
        dispatcher.subscribe(threadId);

        return returnMessage.toString();
    }
}
