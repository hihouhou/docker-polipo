#################################################
# Debian with added polipo.
#################################################

# Using latest debian image as base
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >


# install dependancies
RUN apt-get update && apt-get install -y polipo


EXPOSE 8123

CMD ["polipo", "proxyAddress=0.0.0.0", "proxyPort=8123"]
