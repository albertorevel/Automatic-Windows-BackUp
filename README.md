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
### Opening Command Prompt
First of all, you have to open the Command Prompt:

1. Pressing *Windows + R* and typing *cmd* in the dialog1
2. OR Clicking **Start button**, clicking **All Programs**, clicking **Accessories**, and then clicking **Command Prompt**.2


### Automatic launch
You can set automatic tasks with the *SCHTASKS* command from the Command Prompt
**Remember that you have to change the path!**
>SCHTASKS /CREATE /SC weekly /D WED,FRI /TN UserBackup /ST 14:00 /TR "~Your folder~.vbs"

It will be executed every wednesday and friday at 2 PM.

You can find more information about this command [here](!https://msdn.microsoft.com/en-us/library/windows/desktop/bb736357(v=vs.85).aspx) 

### Manual launch
If you prefer, you can launch the *.bat* file directly from a Windows Command Prompt.

2. Write the absolute path to your file, or drag the file.2
3. Click enter. 3