FROM ubuntu
#Update and Install GIT
RUN apt-get update && \
 apt-get install git -y
# Check the git version
RUN git --version




