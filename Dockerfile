FROM gradle:5.6.2-jdk11 as java-build
EXPOSE 8761
WORKDIR /opt/pod-isante/eureka
COPY build/libs/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar
CMD ["java","-jar","/opt/pod-isante/eureka/eureka-server.jar"]
#sudo apt update
#sudo apt-get install docker
#curl -sSL https://get.docker.com/ | sh
#sudo groupadd docker
#sudo usermod -aG docker $USER
#newgrp docker
#
#docker pull lahcenezinnour/eureka-docker-img:latest
#docker run -p 8761:8761 -t lahcenezinnour/eureka-docker-img:latest

#docker build -t eureka-docker-img .
#docker tag eureka-docker-img lahcenezinnour/eureka-docker-img
#docker push lahcenezinnour/eureka-docker-img