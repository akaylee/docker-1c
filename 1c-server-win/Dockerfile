FROM mcr.microsoft.com/windows/servercore:ltsc2019
ENV regport=1541 \
    port=1540 \
    range="1560:1591" \
    debug="N" \
    log="N"
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
WORKDIR /
COPY logcfg.xml start.ps1 prepare.ps1 Wait-Service.ps1 1cEnt.exe sqlncli.msi ./
RUN .\prepare.ps1; powershell.exe -Command Remove-Item prepare.ps1 -Force
# CMD .\start.ps1 -regport $env:regport -port $env:port -range $env:range -debug $env:debug -servpath "C:\srvinfo" -log $env:log -Verbose
