# Pin our tomcat version to something that has not been updated to remove the vulnerability
# https://hub.docker.com/layers/tomcat/library/tomcat/9.0.59-jdk11/images/sha256-383a062a98c70924fb1b1da391a054021b6448f0aa48860ae02f786aa5d4e2ad?context=explore
FROM lunasec/tomcat-9.0.59-jdk11

# 初始化設定
# 複製 boxInitialize.sh 腳本到容器的 /root 目錄
COPY init.sh /root/init.sh
# 轉換 boxInitialize.sh 從 DOS 格式到 UNIX 格式，避免執行腳本時發生問題
# RUN dos2unix /root/init.sh
# 給予 boxInitialize.sh 執行權限
RUN chmod +x /root/init.sh
# 執行 boxInitialize.sh 來設定 Ubuntu
RUN /root/init.sh

ADD spring/src/ /helloworld/src
ADD spring/pom.xml /helloworld

#  Build spring app
RUN apt update && apt install maven -y
WORKDIR /helloworld/
RUN mvn clean package

#  Deploy to tomcat
RUN mv target/helloworld.war /usr/local/tomcat/webapps/ 

EXPOSE 8080
CMD ["catalina.sh", "run"]
