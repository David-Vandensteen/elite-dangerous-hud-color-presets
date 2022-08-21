@echo off
set FILE=GraphicsConfigurationOverride.xml
set PATHGRAPHIC="%appdata%\..\Local\Frontier Developments\Elite Dangerous\Options\Graphics"

if exist %PATHGRAPHIC%\%FILE% del /q /f %PATHGRAPHIC%\%FILE%
goto :end

:end
