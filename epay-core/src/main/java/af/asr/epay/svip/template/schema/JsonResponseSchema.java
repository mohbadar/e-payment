package af.asr.epay.svip.template.schema;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class JsonResponseSchema {

    @JsonProperty(value = "account_id")
    private String accountId;
    @JsonProperty(value = "currency")
    private String currency;
    @JsonProperty(value = "amount")
    private BigDecimal amount;
    @JsonProperty(value = "response_code")
    private String responseCode;
}
