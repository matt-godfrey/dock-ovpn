
FROM alpine:latest

LABEL author="Matt Godfrey"
LABEL desc="An OpenVPN Docker image"

RUN apt-get update && apt-get install -y \
    openvpn \
    iptables \
    easy-rsa \
    && rm -rf /var/lib/apt/lists/*
    # clean up package lists from apt-get
    # reduces size of docker image


# setup any needed env vars



# copy config files


# expose openvpn port


# rsa key script




