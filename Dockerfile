FROM binarybabel/oracle-jdk:8-alpine

ENV ACCEPT_ORACLE_BCLA=true

ENV FILEPATH=mandelbrot.jpg
ENV INTERACTION_STEP=3
ENV SLEEP=5000

WORKDIR /.

COPY ./Mandelbrot.java /

RUN ["javac","/Mandelbrot.java"]

ENTRYPOINT java Mandelbrot.class $FILEPATH $INTERACTION_STEP $SLEEP
