package af.asr.epay.notification.model;

public enum ChannelType {
    slack, email;

    @Override
    public String toString() {
        return name().toLowerCase();
    }
}
