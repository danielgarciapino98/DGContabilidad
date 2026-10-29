@echo off
echo ===================================================
echo Instalando dependencias requeridas para DGCuadres POS
echo ===================================================

python -m pip install --upgrade pip

python -m pip install PySide6 requests argon2-cffi reportlab cryptography

echo.
echo ===================================================
echo Instalacion completada con exito
echo ===================================================
pause