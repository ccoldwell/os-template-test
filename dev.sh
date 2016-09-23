# --------------------------------------------------------
#
# Build
#
# --------------------------------------------------------
docker build -t mydebian .

# --------------------------------------------------------
#
# this runs the image and mounts everything interesting
# to your local repo so you can play and see the logs
# without having to go into the container (hopefully)
#
# --------------------------------------------------------
docker run --rm --name debian -ti mydebian

