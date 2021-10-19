FROM ubuntu:latest

# Install Dosbox
RUN apt-get update && \
    apt-get install dosbox -y

# Create dosbox user
RUN useradd dosbox && \
    mkdir /home/dosbox/ && \
    chown dosbox:dosbox /home/dosbox/ 

# Set dosbox as user
USER dosbox

WORKDIR /home/dosbox/ 

CMD dosbox