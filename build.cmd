
setlocal

set distro_name=zookeeper-3.4.9

powershell .\downloadzk.ps1 %distro_name%

docker build --build-arg DISTRO_NAME=%distro_name% %~dp0%