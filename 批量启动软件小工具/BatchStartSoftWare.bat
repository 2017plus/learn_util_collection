@echo off
mode con lines=30 cols=60
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
:main
cls
color 2f

rem Configuration message start
echo.----------------------------------------------------------- 
echo.��Ȥ������ս�����
echo.
echo.���õ�һ�쿪ʼ�����ͣ�
echo.
echo.��ʾ��ִ�и����� �����Ķ�ʹ��˵��
echo.
echo.Copyright (c) dufy
echo.
color 2e
echo.-----------------------------------------------------------
echo.��ѡ��ʹ�ã�
echo.
echo. 1.��������ģʽ�������������������1��
echo.
echo. 2.������ͥģʽ�������������������2��
echo.-----------------------------------------------------------
rem Configuration message end

if exist "%SystemRoot%\System32\choice.exe" goto Win7Choice

set /p choice=���������ֲ����س���ȷ��:

echo.
if %choice%==1 goto workStyle
if %choice%==2 goto homeStyle
cls
"set choice="
echo ����������������ѡ��
ping 127.0.1 -n "2">nul
goto main

:Win7Choice
choice /c 12 /n /m "��������Ӧ���֣�"
if errorlevel 2 goto homeStyle
if errorlevel 1 goto workStyle
cls
goto main

:workStyle
cls
color 2f

rem Here to start the work software configuration
start "QQ" "F:\Program Files\Tencent\QQ\Bin\QQScLauncher.exe""
rem Here to end the work software configuration

echo.-----------------------------------------------------------
echo.
echo ѧϰ-˼��-����-�ж�-�Ľ�-�ɹ�
echo.
echo ��ϲ��������ģʽ��������ɹ��� 
echo.

goto end

:homeStyle
cls
color 2f

rem Here to start the home software configuration
start "QQ" "F:\Program Files\Tencent\QQ\Bin\QQScLauncher.exe""
rem Here to end the home software configuration

echo ��ϲ������ͥģʽ��������ɹ���
echo.
goto end

:end
echo �밴������˳���
@Pause>nul