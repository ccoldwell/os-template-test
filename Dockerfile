# -----------------------------------------
#
# start with basic debian
#
# -----------------------------------------
FROM debian:testing
ADD rootfs.tar.xz /

# -----------------------------------------
#
# FROM R-BASE
#
# -----------------------------------------
RUN useradd docker \
	&& mkdir /home/docker \
	&& chown docker:docker /home/docker \
	&& addgroup docker staff

# -----------------------------------------
#
# dumb server test
#
# -----------------------------------------
ADD server.pl /
CMD ["perl", "server.pl"]
