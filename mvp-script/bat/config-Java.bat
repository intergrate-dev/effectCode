@echo off
@echo ��һ�� ����Ҫ���õ�JAVA_HOME·��:(As example: D:\Program Files\Java\jdk1.8.0_181)
set /p input="������JAVA_HOME·����"
@echo �ڶ��� ����JAVA_HOME·��
setx JAVA_HOME "%input%" 
@echo ������ ����PATH
setx path "%path%;%%JAVA_HOME%%\bin"
@echo ���Ĳ� ����classpath
setx classpath .;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar
@echo ��ִ����ɡ�
pause
