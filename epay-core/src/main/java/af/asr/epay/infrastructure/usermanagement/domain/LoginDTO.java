package af.asr.epay.infrastructure.usermanagement.domain;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LoginDTO {

    private String username;
    private String password;
}
