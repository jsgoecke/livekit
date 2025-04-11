FROM livekit/livekit-server:latest
# Copy configuration (see next step)
COPY livekit.yaml /etc/livekit.yaml
# Expose LiveKit's ports (TCP 7880 for signaling, TCP 7881 for fallback, UDP 50000-60000 for media)
EXPOSE 7880 7881/udp 50000-60000/udp
# Run the server with our config
CMD ["livekit-server", "--config", "/etc/livekit.yaml"]

