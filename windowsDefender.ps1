﻿Write-Host "---------------- Remove Registry ----------------"

#Registryden firewall'u kapatıcaktır
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Policy Manager" -Name DisableAntiSpyware -Value 1 -PropertyType DWORD -Force


#Get-WmiObject -Class Wins32_Product dan yüklü olan programlara bakabilirsiniz yüklü olan hepsini kaldıracaktır
#Çift tırnak kısmına Program adını girerekde istediğiniz uygulamayı kaldırabilirsiniz

$app = Get-WmiObject -Class Win32_Product | Where-Object { 
    $_.Name -match "" 
}

$app.Uninstall()


#Win10 ile gelen uygulamaları kaldırıcaktır.
get-appxpackage -allusers *3dbuilder* | remove-appxpackage

get-appxpackage -allusers *alarms* | remove-appxpackage

get-appxpackage -allusers *appconnector* | remove-appxpackage

get-appxpackage -allusers *communicationsapps* | remove-appxpackage

get-appxpackage -allusers *feedback* | remove-appxpackage

get-appxpackage -allusers *officehub* | remove-appxpackage

get-appxpackage -allusers *getstarted* | remove-appxpackage

get-appxpackage -allusers *skypeapp* | remove-appxpackage

get-appxpackage -allusers *zunemusic* | remove-appxpackage

get-appxpackage -allusers *zune* | remove-appxpackage

get-appxpackage -allusers *maps* | remove-appxpackage

get-appxpackage -allusers *messaging* | remove-appxpackage

get-appxpackage -allusers *solitaire* | remove-appxpackage

get-appxpackage -allusers *wallet* | remove-appxpackage

get-appxpackage -allusers *connectivitystore* | remove-appxpackage

get-appxpackage -allusers *bingfinance* | remove-appxpackage

get-appxpackage -allusers *zunevideo* | remove-appxpackage

get-appxpackage -allusers *bingnews* | remove-appxpackage

get-appxpackage -allusers *onenote* | remove-appxpackage

get-appxpackage -allusers  *oneconnect* | remove-appxpackage

get-appxpackage -allusers *mspaint* | remove-appxpackage

get-appxpackage -allusers  *people* | remove-appxpackage

get-appxpackage -allusers *commsphone* | remove-appxpackage

get-appxpackage -allusers *windowsphone* | remove-appxpackage

get-appxpackage -allusers *phone* | remove-appxpackage

get-appxpackage -allusers *photos* | remove-appxpackage

get-appxpackage -allusers *bingsports* | remove-appxpackage

get-appxpackage -allusers *sticky* | remove-appxpackage

get-appxpackage -allusers *sway* | remove-appxpackage

get-appxpackage -allusers *3d* | remove-appxpackage

get-appxpackage -allusers *holographic* | remove-appxpackage


get-appxpackage -allusers *xbox* | remove-appxpackage
clear-host


get-AppxPackage *MSPaint* | remove-AppxPackage





