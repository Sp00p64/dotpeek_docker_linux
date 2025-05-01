FROM alpine:3.21.3

# Add testing repository (to install winetricks)
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update

# Install necessary packages and fonts
RUN apk update && \
    apk add --no-cache \
        wine \
        winetricks \
        cabextract \
        wget \
        ca-certificates \
        fontconfig \
        ttf-dejavu \
        ttf-droid \
        ttf-freefont \
        ttf-liberation && \
        rm -rf /var/cache/apk/*

#Install .NET (in unattended mode), will take some time...
RUN winetricks --unattended dotnet472

# Install DirectX and corefonts (in unattended mode)
RUN winetricks --unattended d3dx9 corefonts

# Download DotPeek
RUN wget -q https://download-cdn.jetbrains.com/resharper/dotUltimate.2025.1.1/dotPeek64.2025.1.1.exe -O dotpeek.exe

CMD ["ash", "-c", "winetricks renderer=no3d && wine dotpeek.exe"]