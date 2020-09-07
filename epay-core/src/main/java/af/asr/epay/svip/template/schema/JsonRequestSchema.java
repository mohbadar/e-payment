package af.asr.epay.svip.template.schema;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class JsonRequestSchema {

    @JsonProperty(value = "account_id")
    private String accountId;
    @JsonProperty(value = "currency")
    private String currency;

}
