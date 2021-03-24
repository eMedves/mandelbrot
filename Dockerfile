FROM binarybabel/oracle-jdk:8-alpine

ENV ACCEPT_ORACLE_BCLA=true

ENV FILEPATH=mandelbrot.jpg
ENV INTERACTION_STEP=3
ENV SLEEP=5000

ADD ./Mandelbrot.java /java/src/

RUN ["javac","/java/src/Mandelbrot.java","-d","/java/bin"]

CMD java /java/bin/Mandelbrot $FILEPATH $INTERACTION_STEP $SLEEP
