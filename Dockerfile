FROM openjdk:17
VOLUME /tmp
# 1. target 폴더 안의 어떤 .jar 파일이든 찾아서 app.jar 라는 이름으로 복사
COPY target/*.jar app.jar
# 2. 이미지 내부에서 실행할 파일 이름을 방금 복사한 app.jar 로 변경
ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=prod"]