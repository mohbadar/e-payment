package af.asr.epay.infrastructure;

import org.keycloak.adapters.springsecurity.client.KeycloakClientRequestFactory;
import org.keycloak.adapters.springsecurity.client.KeycloakRestTemplate;
import org.keycloak.admin.client.Keycloak;
import org.keycloak.representations.idm.UserRepresentation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Scope;
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

//    @Bean
//    public Keycloak getUsers() {
//        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
//                "admin-cli");
//        return keycloak;
//    }

    @PostConstruct
    public void init(){
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));   // It will set UTC timezone
    }


}
