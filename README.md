# Automatic-Windows-BackUp
Automatic script to do a backup of one or more directories in Windows.

## First of all
You have to change all the paths that appear in the script.
Please go to **autoBackup.bat** file and change all the paths. A path is typically marked like:
> "~Source folder~"

In order to avoid problems, set an absolute path like *"C:/Users/myUser/myFolder1/"* and not relative paths like *"/myFolder1"*

## Knowing the project
This project contains two files that lets you to accomplish the task who are lodged in src folder.

+-- src
|	+-- autoBackup.bat
|	+-- autoBackup.vbs
+-- README.md

*autoBackup.bat* is the file who contains the script. You can launch this file directly without automatization.
*autoBackup.vbs* is the file who executes the script if you want to automatize it.


## Launching the script

### Automatic launch

SCHTASKS /CREATE /SC weekly /D WED /TN \UserBackup\Wednesday /ST 10:00 /TR "~Your folder~.vbs"

SCHTASKS /CREATE /SC weekly /D FRI /TN \UserBackup\Friday /ST 14:40 /TR "~Your folder~.vbs"

### Manual launch
You can launch the *.bat* file directly from a Windows Command Prompt.

1. Open the Command Prompt: 1
1. Pressing *Windows + R* and type *cmd* in the dialog1.1
2. OR Clicking **Start button**, clicking **All Programs**, clicking **Accessories**, and then clicking **Command Prompt**.1.2