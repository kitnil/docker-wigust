FROM debian:10

# Installation layer
RUN apt-get update && apt-get install --no-install-recommends -y \
    libgl1-mesa-dev=18.3.6-* \
    libglu1-mesa=9.0.0-* \
    libfreetype6=2.9.1-* \
    libvorbis0a=1.3.6-* \
    libxrender1=1:0.9.10-* \
    libxcomposite1=1:0.4.4-* \
    libglib2.0-0=2.58.3-* \
    libgtk2.0-0=2.24.32-* \
    libasound2=1.1.8-* \
    pulseaudio=12.2-* \
 && rm -rf /var/lib/apt/lists/*

# Configuration layer
RUN useradd -s /bin/bash user \
 && groupadd dri -g 991 \
 && gpasswd -a user dri \
 && mkdir -p /usr/share/desktop-directories /usr/share/applications
