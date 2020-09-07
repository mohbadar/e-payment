package af.asr.epay.svip.client;


import af.asr.epay.svip.template.schema.JsonRequestSchema;
import af.asr.epay.svip.template.schema.JsonResponseSchema;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(value = "schemaholder", url = "https://jsonplaceholder.typicode.com/")
public interface TransactionClient {

    @RequestMapping(method = RequestMethod.POST, value = "/transaction")
    public JsonResponseSchema sendRequest(JsonRequestSchema requestSchema);
}
