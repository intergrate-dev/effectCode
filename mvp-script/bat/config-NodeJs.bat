@echo off
@echo "第一步 输入要设置的Node路径: "
set /p input="请输入Node路径："
@echo "第二步 设置PATH"
setx path "%path%;%%input%%"
@echo "执行完成"
pause


set input="D:\install\node-v14.15.0-win-x64"
@echo "切换到input目录："
call D:
cd %input%

@echo "继续，增加目录node_global、node_cache："
md node_global
md node_cache
pause
@echo "设置变量："

npm config set prefix "%input%\node_global"
npm config set cache "%input%\node_cache"
@echo "新建变量NODE_PATH，不用再设置path"
setx NODE_PATH "%input%\node_global"
@echo "执行成功"
pause
