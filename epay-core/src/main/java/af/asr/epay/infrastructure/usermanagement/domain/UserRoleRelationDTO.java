package af.asr.epay.infrastructure.usermanagement.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserRoleRelationDTO {
    String userId;
    List<String>roles;
}
