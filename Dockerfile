FROM openjdk:8-jdk-slim

ENV FILEPATH=mandelbrot.jpg
ENV INTERACTION_STEP=3
ENV SLEEP=5000

ADD ./Mandelbrot.java .

RUN ["javac","./Mandelbrot.java"]
RUN ["java","-version"]

CMD ["java","Mandelbrot",$FILEPATH,$INTERACTION_STEP,$SLEEP]
