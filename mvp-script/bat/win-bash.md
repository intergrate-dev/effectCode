set dd=%date:~8,2%
set mm=%date:~5,2%
set yy=%date:~0,4%
set Tss=%TIME:~6,2%
set Tmm=%TIME:~3,2%
set Thh=%TIME:~0,2%
set Thh=%Thh: =0%
netstat -a -n -p TCP ->E:\TCPLINK\TcpLinkLine%yy%-%mm%-%dd%_%Thh%.%Tmm%.%Tss%.txt
netstat -a -n -b -p TCP ->E:\TCPLINK\TcpLink%yy%-%mm%-%dd%_%Thh%.%Tmm%.%Tss%.txt




	copy /y H:\system.properties  F:\autotomcat\webapps\RMSClient\WEB-INF\classes\
	
	
	
	
	@echo off
call mvn clean package -U -Dmaven.test.skip=true
cd D:\idea\vspmanager-case-edit\target
java -jar vspmanager-case-edit-0.0.1-SNAPSHOT.jar
echo "完成jar文件的启动"



----------------------------------------------
mvn-bash

call H:
cd H:\xxxx\....

echo "current Path: "
call %cd% 

set MAVEN_HOME=H:\xxx\....
set path=%path%;%MAVEN_HOME%\bin;

call mvn -v

pause

call mvn clean package -U -Dmaven.test.skip=true

pause

-------------------------------------------------------------


--------------------------------------------------------------
copy-bash

set yy=%date:~0,4%
set mm=%date:~0,4%
set dd=%date:~0,4%

set sourceFile=xxx
set distFile=xxx-%yy%%mm%%dd%.war

pause

-------------------------------------------------------------


-----------------------------------
调用bat
call external.bat


cd /d D:\test 
call b.bat

### 开启新窗口调用
cd /d D:\test 
start “” cmd /k call b.bat 




--------------------------------------------------
显示文件后缀名
@echo off
set v=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt
for /f "skip=4 tokens=3" %%a in ('reg query %v%') do set/a a=!%%a
reg add %v% /t REG_DWORD /d %a% /f
taskkill /im explorer.exe /f
start "" "explorer.exe"


--------------------------------------------------
快捷键--执行脚本
创建文件&用notepadd++打开
打包等



