FROM debian:10

RUN apt update && apt install -y \
    libgl1-mesa-dev \
    libglu1-mesa \
    libfreetype6 \
    libvorbis0a \
    libxrender1 \
    libxcomposite1 \
    libglib2.0-0 \
    libgtk2.0-0 \
    libasound2 \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -s /bin/bash user \
 && groupadd dri -g 991 \
 && gpasswd -a user dri \
 && mkdir -p /usr/share/desktop-directories /usr/share/applications
