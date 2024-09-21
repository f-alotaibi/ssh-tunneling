FROM alpine:latest
RUN apk add --no-cache \
  openssh-client \
  ca-certificates

CMD ssh -p $SERVER_PORT -R$SERVER_BIND_PORT:$REMOTE_HOST:$REMOTE_PORT $SSH_ARGS $SERVER_HOST $SSH_ARGS_POST && while true; do sleep 30; done;