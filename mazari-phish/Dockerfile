FROM alpine:latest

LABEL maintainer="https://github.com/MAZARITECH/Mazari-Phising-Tool"
LABEL description="Mazari Phishing Tool - Educational tool for social engineering"

WORKDIR /mazari-phish

# Copy all local files into the container
ADD . /mazari-phish

# Install required packages
RUN apk add --no-cache \
    bash \
    ncurses \
    curl \
    unzip \
    wget \
    php

# Make the main script executable
RUN chmod +x mazari.sh

# Run the tool when the container starts
CMD ["./mazari.sh"]
