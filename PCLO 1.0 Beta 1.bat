@echo off

echo ======================================== PCLO 1.0 Beta 1 [�ڵ���������/�α׻���] =======================================
echo.
echo.
choice /C 123 /N /M "(�������Ḹ �Ϸ��� 1 �Է� / �̺�Ʈ ��� �α� ������ �Ϸ��� 2 �Է� / �� �� �����Ϸ��� 3 �Է�)"
if %errorlevel% equ 1 goto :mode1
if %errorlevel% equ 2 goto :mode2
if %errorlevel% equ 3 goto :mode3

cls

choice /t 1 /d y >   nul

:mode1
echo �������� ����Դϴ�.
echo.
echo.
@set /p miniute="���� �������� �� ������ �Է����ּ���: "
@set /a second=miniute*60
@echo. %miniute%�� �ڿ� PC�� ���������մϴ�.
@echo.
@echo.
@echo.
@shutdown -s -t %second%
@echo.
@echo.
@echo �������� ������ �Ϸ�Ǿ����ϴ�. ��� �� �ڵ����� PCLO�� ����˴ϴ�.
choice /t 3 /d y >   nul

exit

:mode2
echo �̺�Ʈ ��� �α� ���� ����Դϴ�.
choice /t 1 /d y >   nul
echo.
echo.
wevtutil.exe cl Application
wevtutil.exe cl System
wevtutil.exe cl Security
wevtutil.exe cl Setup
wevtutil.exe cl ForwardedEvents
echo.
echo.
echo.
echo �̺�Ʈ ����� ��� �α� ������ �Ϸ�Ǿ����ϴ�. ��� �� �ڵ����� PCLO�� ����˴ϴ�.
choice /t 3 /d y >   nul

exit

:mode3
echo �������� �� �̺�Ʈ ��� �α� ���� ����Դϴ�.
echo.
echo.
echo ���� �α� ������ �����մϴ�.
choice /t 3 /d y >   nul
echo.
echo.
wevtutil.exe cl Application
wevtutil.exe cl System
wevtutil.exe cl Security
wevtutil.exe cl Setup
wevtutil.exe cl ForwardedEvents
echo.
echo.
choice /t 3 /d y >   nul
cls
echo ���� �������� ������ �����մϴ�.
echo.
echo.
@set /p miniute="���� �������� �� ������ �Է����ּ���: "
@set /a second=miniute*60
@echo. %miniute%�� �ڿ� PC�� ���������մϴ�.
@echo.
@echo.
@echo.
@shutdown -s -t %second%
@echo.
@echo.
@echo �̺�Ʈ ����� ��� �α� ������ �������� ������ �Ϸ�Ǿ����ϴ�. ��� �� �ڵ����� PCLO�� ����˴ϴ�.
choice /t 3 /d y >   nul

exit