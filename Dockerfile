FROM adoptopenjdk/11.0.10_9-jre-openj9-0.24.0

VOLUME [ "/data" ]
WORKDIR /data
RUN mkdir /opt/app
ADD ./java-decompiler.jar /opt/app
ADD ./decompile.sh /opt/app/decompile.sh
ENTRYPOINT [ ".", "/opt/app/decompile.sh" ]