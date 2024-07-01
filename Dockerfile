
FROM alpine:latest

LABEL author="Matt Godfrey"
LABEL desc="An OpenVPN Docker image"

RUN apt-get update && apt-get install -y \
    openvpn \
    iptables \
    easy-rsa

