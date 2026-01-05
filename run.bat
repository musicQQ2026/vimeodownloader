rem Solve the problem of "Garbled Text" 
chcp 65001
R:
cd R:\vimeodownloader

java -Dlogging.config=file:./logback.xml -jar vimeodownloader-1.0.0.jar
