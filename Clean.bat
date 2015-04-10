del /s *.ncb
del /s *.pch
del /s *.pdb
del /s *.ilk
del /s *.obj
del /s *.idb
del /s *.dep
del /s *.res
del /s *.manifest
del /s UpgradeLog.htm
del /s UpgradeLog.XML
del /s *.sdf

RD /s /Q Debug
RD /s /Q Release
RD /s /Q ipch
RD /s /Q _UpgradeReport_Files
REM RD /s /Q Build

FOR  %%i in (*.sln) DO (SET SolutionOrProjectPath="%~dp0"%%~ni)
RD /s /Q %SolutionOrProjectPath%\Debug
RD /s /Q %SolutionOrProjectPath%\Release

