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

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		ed \
		less \
		locales \
		vim-tiny \
		wget \
		ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

# -----------------------------------------
#
# dumb server test
#
# -----------------------------------------
ADD server.pl /
CMD ["perl", "server.pl"]
