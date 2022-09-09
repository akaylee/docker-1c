msiexec /i "windows64full_8_3_20_1838\1CEnterprise 8 (x86-64).msi" /qr TRANSFORMS=adminstallrelogon.mst;1049.mst DESIGNERALLCLIENTS=0 THICKCLIENT=0 THINCLIENTFILE=0 THINCLIENT=1 WEBSERVEREXT=0 SERVER=1 CONFREPOSSERVER=0 CONVERTER77=0 SERVERCLIENT=0 LANGUAGES=RU
Remove-Item c:\sqlncli.msi -Force
sc.exe config "1C:Enterprise 8.3 Server Agent" depend= "/"
