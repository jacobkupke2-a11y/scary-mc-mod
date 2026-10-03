@echo off
setlocal
cd /d "%~dp0"
echo === Building It Knows ===
call gradlew.bat build
if errorlevel 1 (
  echo.
  echo BUILD FAILED. Scroll up for the error. Make sure Java 17 is installed.
  pause
  exit /b 1
)
if not exist build\libs\itknows-1.0.0.jar (
  echo Jar not found in build\libs
  pause
  exit /b 1
)
echo === Making CurseForge-importable modpack zip ===
if exist _pack rmdir /s /q _pack
mkdir _pack\overrides\mods
copy /y build\libs\itknows-1.0.0.jar _pack\overrides\mods\ >nul
copy /y packaging\manifest.json _pack\manifest.json >nul
if exist ItKnows-Modpack.zip del ItKnows-Modpack.zip
tar -a -c -f ItKnows-Modpack.zip -C _pack manifest.json overrides
rmdir /s /q _pack
echo.
echo DONE.
echo   Mod jar (for CurseForge upload): build\libs\itknows-1.0.0.jar
echo   Modpack (for CurseForge app Import / playing): ItKnows-Modpack.zip
pause
