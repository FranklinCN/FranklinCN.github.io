@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

REM 清屏
cls

echo.
echo 博客文章发布工具
echo.

echo [信息] 正在添加所有更改到暂存区...
git add .
if %errorlevel% neq 0 (
    color 0C
    echo [错误] 添加文件到暂存区失败！
    pause
    exit /b 1
)

echo [信息] 添加成功！
echo.

set /p commit_message=请输入提交信息 (默认为 "New post"): 
if "!commit_message!"=="" set commit_message=New post

echo [信息] 正在提交更改: "%commit_message%"
git commit -m "!commit_message!"
if %errorlevel% neq 0 (
    color 0E
    echo [警告] 提交可能没有变化或失败了。
)

echo.
echo [信息] 正在推送到远程仓库...
git push -u origin main
if %errorlevel% neq 0 (
    color 0C
    echo [错误] 推送失败！请检查您的网络连接和Git配置。
    pause
    exit /b 1
)

echo.
echo [信息] 推送成功！
echo.
color 0B
echo 文章发布成功！
echo.
echo 按任意键退出...
pause >nul