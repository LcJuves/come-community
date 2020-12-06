@echo off
:: Created at 2020/11/24 18:46.
:: @author Liangcheng Juves


Dim WshShell,oShellLink,desktopDir

Set WshShell=WScript.CreateObject("WScript.Shell")

desktopDir=WshShell.SpecialFloders("Desktop")

Set oShellLink=WshShell.CreateShortcut(desktopDir & "\Chrome.lnk")
oShellLink.TargetPath="%~dp0chrome.exe"
oShellLink.WorkingDirectory="%~dp0"

rem oShellLink.Arguments="--user-data-dir=%~dp0UserData --disk-cache-dir=%~dp0DiskCache"
oShellLink.Save

