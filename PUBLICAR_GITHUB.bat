@echo off
setlocal
echo =============================================
echo BASKET MANAGER - PUBLICAR EN GITHUB
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
)

git add .
git commit -m "Basket Manager V8.5.70"
echo.
echo Si aun no has configurado el repositorio remoto ejecuta:
echo git remote add origin https://github.com/TU_USUARIO/basket-manager.git
echo.
echo Y despues:
echo git push -u origin main
echo.
pause
