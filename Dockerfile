FROM registry.cmiot.chinamobile.com/cmiot_containers/jdk:8
RUN mkdir -p /logs/gc/ /logs/heapdump/ /logs/crash/
RUN mkdir -p /data_realname/auth/key
COPY template/pb_private_key.pem /data_realname/auth/key
COPY target/*.jar /opt/app.jar
COPY bigdatahosts /opt
COPY run.sh /opt
COPY stop.sh /opt
