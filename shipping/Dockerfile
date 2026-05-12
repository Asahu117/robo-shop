#Stage 1: Build the image with all necessary files and configurations

FROM maven:3.6.3-jdk-8 AS build


WORKDIR /opt/shipping

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src  ./src
RUN mvn clean package -DskipTests

#stage 2: Create a clean image with only necessary files

FROM eclipse-temurin:8-jre

WORKDIR /opt/shipping

EXPOSE 8080

ENV CART_ENDPOINT=cart:8080
ENV DB_HOST=mysql

COPY --from=build /opt/shipping/target/shipping-1.0.jar shipping.jar

CMD [ "java", "-Xmn256m", "-Xmx768m", "-jar", "shipping.jar" ]




