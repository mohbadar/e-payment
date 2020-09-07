package af.asr.epay.infrastructure.usermanagement.service;

import af.asr.epay.infrastructure.usermanagement.domain.LoginDTO;
import af.asr.epay.infrastructure.usermanagement.domain.UserDTO;
import af.asr.epay.infrastructure.usermanagement.domain.UserRoleRelationDTO;

import org.keycloak.KeycloakSecurityContext;
import org.keycloak.admin.client.Keycloak;
import org.keycloak.admin.client.resource.*;
import org.keycloak.authorization.client.AuthzClient;
import org.keycloak.representations.AccessToken;
import org.keycloak.representations.AccessTokenResponse;
import org.keycloak.representations.idm.CredentialRepresentation;
import org.keycloak.representations.idm.RoleRepresentation;
import org.keycloak.representations.idm.UserRepresentation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
@Transactional
public class UserManagementService {

    @Autowired
    private KeycloakSecurityContext keycloakSecurityContext;

    @Value("${keycloak.auth-server-url}")
    private String keycloakServerUrl;

    @Value("${keycloak.realm}")
    private String keycloackRealm;

    @Value("${keycloak.resource}")
    private String keycloakClientId;

    @Value("${admin.user}")
    private String keycloackUser;

    @Value("${admin.password}")
    private String keycloackPassword;

    public List<UserRepresentation> registerNewUser(UserDTO dto) {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");

        RealmResource realm = keycloak.realm(keycloackRealm);
        UsersResource users = realm.users();
        UserRepresentation user = createUser(dto);
        users.create(user);
        System.out.println("*********************user list***************************** ");
        List<UserRepresentation> userList = users.list();
        System.out.println(userList);
        System.out.println("************************************************** ");
        return userList;
    }

    public UserRepresentation assignUserRole(UserRoleRelationDTO dto) {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");

        RealmResource realm = keycloak.realm(keycloackRealm);
        UserResource userResource = realm.users().get(dto.getUserId());
        UserRepresentation user = userResource.toRepresentation();
        List<RoleRepresentation> rolesToAdd = new ArrayList<RoleRepresentation>();
        for (String role : dto.getRoles()) {
            rolesToAdd.add(realm.roles().get(role).toRepresentation());
        }
        userResource.roles().realmLevel().add(rolesToAdd);

        return user;
    }

    public AccessToken getLoggedInUser() {
        return keycloakSecurityContext.getToken();
    }


    public UsersResource getUsers() {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");

        RealmResource realm = keycloak.realm(keycloackRealm);
        UsersResource users = realm.users();
        return users;
    }

    public UserResource getUserById(String id) {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");

        RealmResource realm = keycloak.realm(keycloackRealm);
        return realm.users().get(id);
    }

    private UserRepresentation createUser(UserDTO dto) {
        UserRepresentation user = new UserRepresentation();
        user.setEmail(dto.getEmail());
        user.setFirstName(dto.getFirstname());
        user.setLastName(dto.getLastname());
        user.setEmailVerified(true);
        user.setUsername(dto.getUsername());
        user.setCredentials(Collections.singletonList(createCredential(dto.getPassword())));
        return user;
    }

    private CredentialRepresentation createCredential(String password) {
        CredentialRepresentation credentialRepresentation = new CredentialRepresentation();
        credentialRepresentation.setType(CredentialRepresentation.PASSWORD);
        credentialRepresentation.setValue(password);
        return credentialRepresentation;
    }

    public RolesResource getRoles() {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realmResource = keycloak.realm(keycloackRealm);
        return realmResource.roles();
    }

    public List<RoleRepresentation> getUserRoleById(String id) {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realm = keycloak.realm(keycloackRealm);
        UserResource userResource = realm.users().get(id);
        List<RoleRepresentation> roleRepresentationList = userResource.roles().realmLevel().listEffective();
        return roleRepresentationList;
    }

    public RoleResource getRoleById(String id) {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realm = keycloak.realm(keycloackRealm);
        return realm.roles().get(id);
    }

    public GroupsResource getGroups() {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realmResource = keycloak.realm(keycloackRealm);
        return realmResource.groups();
    }

    public GroupResource getGroupById(String id) {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realm = keycloak.realm(keycloackRealm);
        return realm.groups().group(id);
    }

    public KeyResource getKeys() {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realmResource = keycloak.realm(keycloackRealm);
        return realmResource.keys();
    }

    public ClientsResource getClients() {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realmResource = keycloak.realm(keycloackRealm);
        return realmResource.clients();
    }

    public void logoutAll() {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, keycloackUser, keycloackPassword,
                "admin-cli");
        RealmResource realmResource = keycloak.realm(keycloackRealm);
        realmResource.logoutAll();
    }


    public AccessTokenResponse authenticate(LoginDTO dto)
    {
        AuthzClient authzClient = AuthzClient.create();
                // send the authorization request to the server in order to
            // obtain an access token granted to the user
        AccessTokenResponse response = authzClient.obtainAccessToken(dto.getUsername(), dto.getPassword());

        return response;
    }

    public String authenticate(String username, String password)
    {
        Keycloak keycloak = Keycloak.getInstance(keycloakServerUrl, keycloackRealm, username, password,
                "admin-cli");
        return keycloak.tokenManager().getAccessTokenString();
    }
}
