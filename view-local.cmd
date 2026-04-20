@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0view-local.ps1" %*
set "EXITCODE=%ERRORLEVEL%"

if not "%EXITCODE%"=="0" (
  echo.
  echo The local preview launcher exited with code %EXITCODE%.
  if not defined VIEW_LOCAL_NO_PAUSE pause
)

exit /b %EXITCODE%
