set line=2
setlocal enabledelayedexpansion
for /f "skip=%line%" %%A in (%1UnityProjectPath.txt) do (
if exist %%A (
explorer %%A
) else (
echo No folder
)
xcopy "%2MyUnityDLL.dll" "%%A\" /y
)
endlocal