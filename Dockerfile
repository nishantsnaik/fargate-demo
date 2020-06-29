FROM openjdk:8-alpine
# set maintainer
LABEL maintainer="nishantsnaik@gmail.com"
ARG SPRING_PROFILE_ENV=dev
ENV SPRING_PROFILE_ENV="${SPRING_PROFILE_ENV}"

COPY ./target/demo-*.jar /tmp/demo.jar
WORKDIR /tmp
ENTRYPOINT ["java","-jar","ioa.jar"]
EXPOSE 8070