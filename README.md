# Automatic-Windows-BackUp
Automatic scripts to do backup of some directories in Windows.

SCHTASKS /CREATE /SC weekly /D WED /TN \UserBackup\Wednesday /ST 10:00 /TR "~Your folder~.vbs"

SCHTASKS /CREATE /SC weekly /D FRI /TN \UserBackup\Friday /ST 14:40 /TR "~Your folder~.vbs"