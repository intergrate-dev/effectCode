@echo off
@echo "��һ�� ����Ҫ���õ�Node·��: "
set /p input="������Node·����"
@echo "�ڶ��� ����PATH"
setx path "%path%;%%input%%"
@echo "ִ�����"
pause


set input="D:\install\node-v14.15.0-win-x64"
@echo "�л���inputĿ¼��"
call D:
cd %input%

@echo "����������Ŀ¼node_global��node_cache��"
md node_global
md node_cache
pause
@echo "���ñ�����"

npm config set prefix "%input%\node_global"
npm config set cache "%input%\node_cache"
@echo "�½�����NODE_PATH������������path"
setx NODE_PATH "%input%\node_global"
@echo "ִ�гɹ�"
pause
