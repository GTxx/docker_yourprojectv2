############################################################
# Dockerfile to build Python WSGI Application Containers
# Based on python 2.7
############################################################

# Set the base image to python 2.7
FROM python:2.7

# File Author / Maintainer
MAINTAINER Richard Liu <richardxxx0x@gmail.com>

# Add the application resources URL
RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y tar git curl nano vim wget dialog net-tools build-essential

# Copy the application folder inside the container
ADD ../docker_yourprojectv2 /docker_yourprojectv2

# Get pip to download and install requirements:
RUN pip install -r /docker_yourprojectv2/requirements.txt

# Expose ports
EXPOSE 8000

# Set the default directory where CMD will execute
WORKDIR /docker_yourprojectv2

# Set the default command to execute    
# when creating a new container
# i.e. using CherryPy to serve the application
CMD python xxxx