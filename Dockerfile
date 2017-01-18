FROM pradeepchintam/java8alpine

COPY apache-tomcat-8.5.9 /opt/apache-tomcat-8.5.9

COPY unzip /opt

COPY test.war /opt/apache-tomcat-8.5.9/webapps/

RUN ls /opt

RUN ls -ltr /opt/apache-tomcat-8.5.9/bin

EXPOSE 8080 8443

RUN ls /opt/apache-tomcat-8.5.9/bin

RUN chmod -R 777 /opt/apache-tomcat-8.5.9/bin/

ENTRYPOINT /opt/apache-tomcat-8.5.9/bin/catalina.sh run

