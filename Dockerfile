FROM tomcat:8.5.35-jre10

RUN ls -lrth /var/lib/jenkins/workspace/dockerpro/webapp/target/ | grep "webapp.war"

WORKDIR /var/lib/jenkins/workspace/dockerpro/webapp/target/

ARG webapp.war=/var/lib/jenkins/workspace/dockerpro/webapp/target/webapp.war

COPY ${webapp.war} /usr/local/tomcat/webapps/

EXPOSE 8080

CMD chmod +x /usr/local/tomcat/bin/catalina.sh

CMD ["catalina.sh", "run"]    
