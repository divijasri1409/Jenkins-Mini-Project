FROM tomcat:8.0.20-jre8
COPY tomcat-user.xml /usr/local/tomcat/conf/
COPY target/*.war /usr/local/tomcat/webapps/
