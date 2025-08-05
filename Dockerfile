FROM debian:stable

ARG UID=1000
ARG GID=1000

VOLUME /data
VOLUME /home/bsp/.steam/steam

RUN apt update -y &&\ 
    apt install -y git \
        curl \
        inotify-tools \
        libnotify-bin \
        parallel \
        rsync unzip &&\
    groupadd -g "${GID}" bsp &&\
    useradd -g bsp -u "${UID}" bsp &&\
    mkdir /data &&\
    chown bsp:bsp /data

USER bsp
WORKDIR /home/bsp
RUN git clone https://github.com/scorpius2k1/linux-bsp-casefolding-workaround.git ./lbspcfw

COPY --chmod=0755 entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
