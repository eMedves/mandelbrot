FROM binarybabel/oracle-jdk:8-alpine

ENV ACCEPT_ORACLE_BCLA=true

ENV FILEPATH=mandelbrot.jpg
ENV INTERACTION_STEP=3
ENV SLEEP=5000

ADD ./Mandelbrot.java .

RUN ["javac","./Mandelbrot.java"]
RUN ["ll"]

CMD ["./Mandelbrot.class",$FILEPATH,$INTERACTION_STEP,$SLEEP]
