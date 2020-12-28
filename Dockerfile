FROM ubuntu

MAINTAINER Akanksha Srivastava<akankshaS542@gmail.com>

RUN apt-get update \

&&  apt-get install -y nodejs

RUN apt-get update \

&&  apt-get install -y npm

RUN apt-get update \
apt-get install -y git

RUN mkdir /home/Project \
&&  cd /home/Project \

RUN git clone https://github.com/OCTO28122020-Akanksha/Sample_Project.git

RUN node -v \
&&  npm -v

RUN exit
 
CMD /bin/echo "Done!"
