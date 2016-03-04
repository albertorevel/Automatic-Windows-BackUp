@echo off
:: Here you can specify any disk or usb device (changing C:\ to the device letter)
:: It will compress directly the folder specified without do the copy if device is not reachable.
if exist C:\ goto copy
goto compression

:copy
xcopy /e /d /y "~Source folder~" "~Destination folder~"
echo. 
echo %date:~6,4%/%date:~3,2%/%date:~0,2% %TIME:~0,8% - Copied >> "~Log Folder~.log"


:compresion
"C:\Program Files\7-Zip\7z" a -t7z -m0=lzma -mx=9 "~Destination folder + filename~_%date:~6,4%%date:~3,2%%date:~0,2%.7z" "~Source folder~"
:: Zip copy to the cloud Onedrive/DropBox/Drive ....
xcopy /e /d /y "~Source folder~" "~Destination cloud folder~"
echo. 
echo %date:~6,4%/%date:~3,2%/%date:~0,2% %TIME:~0,8% - Copied and compressed >> "~Log Folder~.log"

