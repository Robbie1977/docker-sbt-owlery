FROM phenoscape/owlery

MAINTAINER Robbie - Virtual Fly Brain <rcourt@ed.ac.uk>

ENV OWLURL=http://www.virtualflybrain.org/owl/vfb.owl

COPY application.conf /srv/conf/application.conf

ADD ${OWLURL} /srv/vfb.owl
