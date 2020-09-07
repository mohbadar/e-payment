package af.asr.epay.notification.service.channel;


import af.asr.epay.notification.model.ChannelType;
import af.asr.epay.notification.model.Message;

public interface Channel {
    default void notify(Message msg) {
        throw new RuntimeException("Notify method is not implemented yet.");
    }

    default boolean supports(ChannelType type) {
        throw new RuntimeException("Notify method is not implemented yet.");
    }
}
