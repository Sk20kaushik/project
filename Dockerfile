FROM tomcat:latest

LABEL maintainer="kaushik20"

ADD ./target/LoginWebAppCal-1.3.5.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
 
