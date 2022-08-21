@echo off
set FILE=GraphicsConfigurationOverride.xml
set PATHGRAPHIC="%appdata%\..\Local\Frontier Developments\Elite Dangerous\Options\Graphics"

set MATRIXRED_R=-1.5
set MATRIXRED_G=0.25
set MATRIXRED_B=2

set MATRIXGREEN_R=-0.5
set MATRIXGREEN_G=0
set MATRIXGREEN_B=-1.5

set MATRIXBLUE_R=2
set MATRIXBLUE_G=0.1
set MATRIXBLUE_B=-1.25

if "%1"=="/preview" (
  start http://arkku.com/elite/hud_editor/#theme_%MATRIXRED_R%_%MATRIXRED_G%_%MATRIXRED_B%_%MATRIXGREEN_R%_%MATRIXGREEN_G%_%MATRIXGREEN_B%_%MATRIXBLUE_R%_%MATRIXBLUE_G%_%MATRIXBLUE_B%
  goto :end
)

if not exist %PATHGRAPHIC% (
  echo %PATHGRAPHIC%% not found
  pause
  goto :end
)

echo ^<?xml version="1.0" encoding="UTF-8" ?^> > %PATHGRAPHIC%\%FILE%
echo ^<GraphicsConfig^> >> %PATHGRAPHIC%\%FILE%
echo   ^<GUIColour^> >> %PATHGRAPHIC%\%FILE%
echo     ^<Default^> >> %PATHGRAPHIC%\%FILE%
echo       ^<LocalisationName^>Standard^</LocalisationName^> >> %PATHGRAPHIC%\%FILE%
echo       ^<MatrixRed^>%MATRIXRED_R%, %MATRIXRED_G%, %MATRIXRED_B%^</MatrixRed^> >> %PATHGRAPHIC%\%FILE%
echo       ^<MatrixGreen^>%MATRIXGREEN_R%, %MATRIXGREEN_G%, %MATRIXGREEN_B%^</MatrixGreen^> >> %PATHGRAPHIC%\%FILE%
echo       ^<MatrixBlue^>%MATRIXBLUE_R%, %MATRIXBLUE_G%, %MATRIXBLUE_B%^</MatrixBlue^> >> %PATHGRAPHIC%\%FILE%
echo     ^</Default^> >> %PATHGRAPHIC%\%FILE%
echo   ^</GUIColour^> >> %PATHGRAPHIC%\%FILE%
echo ^</GraphicsConfig^> >> %PATHGRAPHIC%\%FILE%

:end
