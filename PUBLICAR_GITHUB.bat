@echo off
setlocal
echo =============================================
echo BASKET MANAGER V8.5.116 - PUBLICAR EN GITHUB
echo =============================================
echo.
where git >nul 2>nul
if errorlevel 1 (
  echo ERROR: Git no esta instalado o no esta en PATH.
  pause
  exit /b 1
)
if not exist .git (
  git init
  git branch -M main
  git remote add origin https://github.com/julianlopezserrano69-cell/basket-manager.git
)
git add .
git commit -m "Basket Manager V8.5.116 - Control de asistencia"
git push -u origin main
echo.
echo Publicacion enviada. GitHub Pages:
echo https://julianlopezserrano69-cell.github.io/basket-manager/
pause
