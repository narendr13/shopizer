FROM adoptopenjdk/openjdk11-openj9:alpine
RUN mkdir /opt/app
RUN mkdir /files
COPY ./shopizer/sm-shop/target/shopizer.jar /opt/app
COPY SALESMANAGER.h2.db /
COPY ./files /files
CMD ["java", "-jar", "/opt/app/shopizer.jar"] 
