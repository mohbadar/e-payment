package af.asr.epay.infrastructure.usermanagement.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDTO {
    String username;
    String email;
    String password;
    String firstname;
    String lastname;
    String roleId;
}
