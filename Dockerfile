FROM tomcat:8.0-jres
COPY tomcat-user.xml /usr/local/tomcat/conf/
COPY target/*.war /usr/local/tomcat/webapps/
