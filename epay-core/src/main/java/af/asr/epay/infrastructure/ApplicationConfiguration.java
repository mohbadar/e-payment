package af.asr.epay.infrastructure;

import af.asr.epay.infrastructure.usermanagement.domain.LoginDTO;
import af.asr.epay.infrastructure.usermanagement.service.UserManagementService;
import af.asr.epay.svip.config.CustomErrorDecoder;
import feign.Logger;
import feign.RequestInterceptor;
import feign.codec.ErrorDecoder;
import okhttp3.OkHttpClient;
import org.keycloak.adapters.springsecurity.client.KeycloakClientRequestFactory;
import org.keycloak.adapters.springsecurity.client.KeycloakRestTemplate;
import org.keycloak.admin.client.Keycloak;
import org.keycloak.admin.client.resource.KeyResource;
import org.keycloak.representations.idm.KeysMetadataRepresentation;
import org.keycloak.representations.idm.UserRepresentation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Scope;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

@Component
@Primary
public class ApplicationConfiguration {


    @Value("${keycloak.auth-server-url}")
    private String keycloakServerUrl;

    @Value("${keycloak.realm}")
    private String keycloackRealm;

    @Value("${admin.user}")
    private String keycloackUser;

    @Value("${admin.password}")
    private String keycloackPassword;

    @Autowired
    private UserManagementService userManagementService;

//    @Bean
//    public Keycloak getUsers() {
//        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
//                "admin-cli");
//        return keycloak;
//    }

    @PostConstruct
    public void init(){
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));

        String token = userManagementService.authenticate(this.keycloackUser, this.keycloackPassword);
        System.out.println("UserManagement > " + token);
    }

    @Bean
    public RequestInterceptor requestInterceptor() {
        return requestTemplate -> {
            requestTemplate.header("user", keycloackUser);
            requestTemplate.header("password", keycloackUser);
            requestTemplate.header("Accept", MediaType.APPLICATION_JSON_VALUE);
        };
    }

    @Bean
    public ErrorDecoder errorDecoder() {
        return new CustomErrorDecoder();
    }

    @Bean
    Logger.Level feignLoggerLevel() {
        return Logger.Level.BASIC;
    }

    @Bean
    public OkHttpClient client() {
        return new OkHttpClient();
    }


}
