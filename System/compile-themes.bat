@ECHO OFF
SET ThemeDir=Themes
SET CurrentDir=%cd%

if exist %CurrentDir%\%ThemeDir% (
    FOR /d %%s in (%CurrentDir%\%ThemeDir%\*) do (
        lessc %CurrentDir%\%ThemeDir%\%%~nxs\GenerateOneThemePerFile.less %CurrentDir%\%%~nxs.css
    )
)