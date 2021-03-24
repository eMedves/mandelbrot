FROM binarybabel/oracle-jdk:8-debian

ENV ACCEPT_ORACLE_BCLA=true

ENV FILEPATH=mandelbrot.jpg
ENV INTERACTION_STEP=3
ENV SLEEP=5000

COPY ./Mandelbrot.class /srv/

#RUN ["javac","/Mandelbrot.java"]

CMD Mandelbrot $FILEPATH $INTERACTION_STEP $SLEEP
