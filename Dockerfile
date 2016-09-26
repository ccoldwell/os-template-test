# FROM debian:testing

# ADD rootfs.tar.xz \

# CMD ["/sbin/init"]

FROM scratch
ADD rootfs.tar.xz /
CMD ["/sbin/init"]
