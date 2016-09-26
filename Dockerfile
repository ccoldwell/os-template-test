FROM debian:testing

ADD rootfs.tar.xz
CMD ["/sbin/init"]
