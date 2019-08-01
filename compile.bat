@ECHO OFF

echo Please select one option to compile a LESS
echo Press 1 to compile whole Themes into one file
echo Press 2 to compile every theme in private CSS file
echo Press 3 to compile every theme in private CSS file without theme Name

:: Prompt User for Choice
:Prompt
set "Input="
set /p "Input=Select an option:"
if %Input%==1 (
    lessc .\main.less .\styles.css
) else if %Input%==2 (
    call .\System\compile-themes.bat
) else if %Input%==3 (
    call .\System\compile-mute-themes.bat
) else (
    echo Invalid choice
    goto Prompt
)
PAUSE 1;