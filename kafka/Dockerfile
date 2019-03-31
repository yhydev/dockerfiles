FROM java:8

RUN curl -o /kafka.tgz https://www-us.apache.org/dist/kafka/2.1.1/kafka_2.11-2.1.1.tgz \
&& tar xf kafka.tgz && rm kafka.tgz \
&& mv kafka* kafka 
#&& echo PATH=/kafka/bin:$PATH > /etc/profile.d/kafka-env-init.sh 
ENV PATH=/kafka/bin:$PATH
ENV ZOOKEEPER_CONNECT=localhost:2128
ENV BROKER_ID=1
ENV LOG_DIRS=/tmp/kafka-logs

#CMD ["kafka-server-start.sh", "/kafka/config/server.properties", "--override", "zookeeper.connect=$ZOOKEEPER_CONNECT", "--override", "broker.id=`$BROKER_ID`", "--override", "log.dirs=`$LOG_DIRS`"]
CMD kafka-server-start.sh /kafka/config/server.properties --override zookeeper.connect=$ZOOKEEPER_CONNECT --override broker.id=$BROKER_ID --override log.dirs=$LOG_DIRS
#CMD ["kafka-server-start.sh", "/kafka/config/server.properties", "--override", "zookeeper.connect=$ZOOKEEPER_CONNECT", "--override", "broker.id=$BROKER_ID", "--override", "log.dirs=$LOG_DIRS"]
