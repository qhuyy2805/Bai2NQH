# Sử dụng Tomcat ổn định + JDK 17
FROM tomcat:10.1.44-jdk21

# Xóa webapp mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào Tomcat (chỉnh lại đúng đường dẫn)
COPY dist/Bai2NQH.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Render sẽ map vào $PORT)
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]
