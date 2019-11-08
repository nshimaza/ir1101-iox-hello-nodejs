FROM devhub-docker.cisco.com/iox-docker/ir1101/base-rootfs

COPY hello.js /
RUN opkg update && \
    opkg install nodejs

EXPOSE 8080
CMD ["node", "hello.js"]
