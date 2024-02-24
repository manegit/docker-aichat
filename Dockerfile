# base image
FROM alpine:latest

ENV USER=alpine

# Install packages
RUN apk add --update cargo
rm -rf /var/lib/apt/lists/* && \
rm /var/cache/apk/*

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/$USER" \
    --ingroup "users" \
    --shell "/bin/bash" \
    --uid "1000" \
    --system \
    "$USER"

RUN echo "$USER:$USER" | chpasswd && echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel && adduser $USER wheel

# users
USER $USER
WORKDIR /home/$USER

RUN cargo install aichat --locked 

# run the applicationn
CMD ["/home/$USER/.cargo/bin/aichat"]
