FROM adoptopenjdk/openjdk11-openj9:alpine
RUN mkdir /opt/app
RUN mkdir /files
COPY sm-shop/target/shopizer.jar /opt/app
COPY SALESMANAGER.h2.db /
EXPOSE 8080
CMD ["java", "-jar", "/opt/app/shopizer.jar"] 
