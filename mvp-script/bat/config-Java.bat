@echo off
@echo 第一步 输入要设置的JAVA_HOME路径:(As example: D:\Program Files\Java\jdk1.8.0_181)
set /p input="请输入JAVA_HOME路径："
@echo 第二步 设置JAVA_HOME路径
setx JAVA_HOME "%input%" 
@echo 第三步 设置PATH
setx path "%path%;%%JAVA_HOME%%\bin"
@echo 第四步 设置classpath
setx classpath .;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar
@echo “执行完成”
pause
