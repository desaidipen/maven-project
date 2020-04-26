FROM tomcat:latest
# COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps/
COPY ./webapp/target/webapp.war $CATALINA_HOME/webapps/

EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
