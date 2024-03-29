package af.asr.epay.notification.service.channel;

import af.asr.epay.notification.model.ChannelType;
import af.asr.epay.notification.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ChannelFactory {
    private final List<Channel> channelList;

    @Autowired
    public ChannelFactory(List<Channel> channelList) {
        this.channelList = channelList;
    }

    public Channel get(ChannelType c) {
        return channelList
                .stream()
                .filter(service -> service.supports(c))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("No channel found with type : "+c));
    }

    public void notifyAll(Message msg) {
        for(Channel c : channelList) {
            c.notify(msg);
        }
    }

    public List<Channel> getChannels() {
        return channelList;
    }
}
