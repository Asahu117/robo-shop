#Stage 1: Build the image with all necessary files and configurations
FROM mysql:5.7 as builder

WORKDIR /build

COPY config.sh .
COPY scripts/* ./scripts/

RUN CHMOD +x config.sh

#Stage 2: Create a clean image with only necessary files

FROM mysql:5.7

VOLUME /data

ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes \
    MYSQL_DATABASE=cities \
    MYSQL_USER=shipping \
    MYSQL_PASSWORD=secret

COPY --from=builder /build/config.sh /root/config.sh
COPY --from=builder /build/scripts/ /docker-entrypoint-initdb.d/

RUN /root/config.sh && rm /docker-entrypoint-initdb.d/*













