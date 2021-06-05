FROM openjdk:11
EXPOSE 3306

RUN java -cp /var/lib/jenkins/workspace/cicd-pipeline_dev/target/toDoAppWithLogin.jar org.springframework.boot.loader.JarLauncher
ENTRYPOINT ["java","org.springframework.boot.loader.JarLauncher", "--my_sql.host=zv72thao-team5server.mysql.database.azure.com", "--my_sql.port=3306"]