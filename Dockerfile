FROM usuresearch/scala-sbt-extra:docker-client

MAINTAINER Robbie - Virtual Fly Brain <rcourt@ed.ac.uk>

ENV SBT_VERSION=0.13.9

RUN mkdir -p /opt/VFB && \
cd /opt/VFB/ && \
git clone https://github.com/VirtualFlyBrain/owlery.git

COPY application.conf /opt/VFB/owlery/src/main/resources/application.conf

COPY startup.sh /opt/VFB/owlery/startup.sh

RUN chmod +x /opt/VFB/owlery/startup.sh

EXPOSE 8080

ENTRYPOINT ["/opt/VFB/owlery/startup.sh"]
