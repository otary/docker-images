@echo off

SET centosInstallDir=C:\\SubSystem\\Centos2

rem if not exist LxRunOffline.zip (
@echo "Start Download LxRunOffline...";
rem powershell (new-object System.Net.WebClient).DownloadFile('https://github.com/DDoSolitary/LxRunOffline/releases/download/v3.5.0/LxRunOffline-v3.5.0-mingw.zip','LxRunOffline.zip');
@echo "Finish Download LxRunOffline!";
rem )

rem if not exist CentOS-7.img.tar.xz (
@echo "Start Download Centos...";
rem powershell (new-object System.Net.WebClient).DownloadFile('https://buildlogs.centos.org/centos/7/docker/CentOS-7-20140625-x86_64-docker_01.img.tar.xz','CentOS-7.img.tar.xz');
@echo "Finish Download Centos!";
rem )

@echo "Star Install Centos...";
start ./bin/unzip.exe ./assets/LxRunOffline.zip
LxRunOffline.exe install -n centos -d %centosInstallDir% -f ./CentOS-7.img.tar.xz
@echo "Finish Install Centos!";

@echo "wsl -s centos"
