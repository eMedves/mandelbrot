FROM openjdk:8-jdk-slim

ENV FILENAME=mandelbrot.png
ENV INTERACTION_STEP=3
ENV SLEEP=5000

ADD ./Mandelbrot.java .

RUN ["javac","./Mandelbrot.java"]
RUN ["mkdir","/output"]

ADD ./index.html ./tmp

VOLUME ["/output"]

CMD mv /tmp/index.html /output && java Mandelbrot "/output/$FILENAME" $INTERACTION_STEP $SLEEP
