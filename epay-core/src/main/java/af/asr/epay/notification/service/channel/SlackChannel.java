package af.asr.epay.notification.service.channel;

import af.asr.epay.notification.model.ChannelType;
import af.asr.epay.notification.model.Message;
//import com.ullink.slack.simpleslackapi.SlackSession;
//import com.ullink.slack.simpleslackapi.impl.SlackSessionFactory;
import com.ullink.slack.simpleslackapi.SlackSession;
import com.ullink.slack.simpleslackapi.impl.SlackSessionFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.io.IOException;

@Component
public class SlackChannel implements Channel {

    @Value("${slack.access.token}")
    private String slackAccessToken;

    @Value("${slack.channel.name}")
    private String slackChannel;

    @Override
    public void notify(Message msg) {

        SlackSession session = null;
        try {
            session = SlackSessionFactory.createWebSocketSlackSession(slackAccessToken);
            session.connect();
            com.ullink.slack.simpleslackapi.SlackChannel channel = session.findChannelByName(slackChannel);
            if(channel == null) {
                throw new RuntimeException("Invalid Slack channel ["+slackChannel+"] is specified.");
            }
            session.sendMessage(channel, prepareMsg(msg));
        } catch (Exception e) {
            throw new RuntimeException("Failed to send message using slack channel, exception : "+e.getMessage(), e);
        } finally {
            try {
                if(session != null)
                    session.disconnect();
            } catch (IOException ignore) {
            }
        }
    }

    private String prepareMsg(Message msg) {
        StringBuilder b = new StringBuilder();
        if(!StringUtils.isEmpty(msg.getFrom())) {
            b.append("`NotificationService` : (").append(msg.getFrom()).append(") - ");
        }
        if(!StringUtils.isEmpty(msg.getSubject())) {
            b.append("_").append(msg.getSubject()).append("_");
        }
        if(!StringUtils.isEmpty(msg.getBody())) {
            b.append("\n>");
            b.append(msg.getBody());
        }
        return b.toString();
    }

    @Override
    public boolean supports(ChannelType channelType) {
        return ChannelType.slack == channelType;
    }
}
