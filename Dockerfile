FROM binarybabel/oracle-jdk:8-alpine

ENV ACCEPT_ORACLE_BCLA=true

ENV FILEPATH=mandelbrot.jpg
ENV INTERACTION_STEP=3
ENV SLEEP=5000

COPY ./Mandelbrot.java /java/src/

RUN ["javac","/java/src/Mandelbrot.java"]

ENTRYPOINT ["/java/src/Mandelbrot.class",$FILEPATH,$INTERACTION_STEP,$SLEEP]
