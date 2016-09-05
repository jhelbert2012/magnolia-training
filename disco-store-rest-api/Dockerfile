# our base image
FROM tomcat:7.0.70-jre8-alpine
#Install magnolia project
RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./disco-store-webapp/target/disco-store /usr/local/tomcat/webapps/ROOT
# specify the port number the container should expose
EXPOSE 8080
# run the application
CMD ["catalina.sh", "run"]
