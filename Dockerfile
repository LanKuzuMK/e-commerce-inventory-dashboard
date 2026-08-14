# Use the official Tomcat 11 image from Docker Hub
FROM tomcat:11.0

# Remove default Tomcat applications to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy our web application to the ROOT directory so it serves at the main URL ("/")
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# Expose the standard port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
