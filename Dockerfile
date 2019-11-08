FROM hseeberger/scala-sbt:8u222_1.3.3_2.13.1

RUN wget https://elephantscale-public.s3.amazonaws.com/downloads/spark-2.4.3-bin-hadoop2.7.tgz -P /tmp
RUN cd /tmp && tar xvf spark-2.4.3-bin-hadoop2.7.tgz && mv spark-2.4.3-bin-hadoop2.7 /spark

ENV PATH="/spark/bin:${PATH}"

EXPOSE 8080
EXPOSE 4040

ENV SPARK_MASTER_HOST=0.0.0.0

COPY ./start.sh /
WORKDIR /root
