FROM debian:testing

# ADD rootfs.tar.xz \

# CMD ["/sbin/init"]

#FROM scratch
ADD rootfs.tar.xz /
#CMD ["echo", "$PATH"]
#CMD ["/sbin/init"]
ADD server.pl /
ADD index.html /
CMD ["/bin/sh"]
