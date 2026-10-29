@echo off
chcp 65001 > nul
echo ===================================================
echo Creando estructura completa de carpetas y archivos
echo ===================================================

:: 1. Carpeta raíz del paquete
mkdir dgcuadres

:: 2. Carpeta de Arranque
mkdir dgcuadres\arranque
type nul > dgcuadres\arranque\__init__.py
type nul > dgcuadres\arranque\principal.py
type nul > dgcuadres\arranque\estilos.py

:: 3. Carpeta de Interfaz
mkdir dgcuadres\interfaz
mkdir dgcuadres\interfaz\componentes
mkdir dgcuadres\interfaz\estilos
type nul > dgcuadres\interfaz\__init__.py
type nul > dgcuadres\interfaz\ventana_principal.py
type nul > dgcuadres\interfaz\componentes\__init__.py
type nul > dgcuadres\interfaz\estilos\__init__.py

:: 4. Carpeta del Núcleo y Servicios
mkdir dgcuadres\nucleo
mkdir dgcuadres\nucleo\base_datos
mkdir dgcuadres\nucleo\moneda
type nul > dgcuadres\nucleo\__init__.py
type nul > dgcuadres\nucleo\bus_eventos.py
type nul > dgcuadres\nucleo\base_datos\__init__.py
type nul > dgcuadres\nucleo\base_datos\conexion.py
type nul > dgcuadres\nucleo\base_datos\migraciones.py
type nul > dgcuadres\nucleo\moneda\__init__.py
type nul > dgcuadres\nucleo\moneda\tasas.py

:: 5. Módulos / Bloques de Negocio
mkdir dgcuadres\modulos
mkdir dgcuadres\modulos\pos
mkdir dgcuadres\modulos\cuadre
mkdir dgcuadres\modulos\almacen
mkdir dgcuadres\modulos\catalogo
mkdir dgcuadres\modulos\fichas_costo
mkdir dgcuadres\modulos\gastos
mkdir dgcuadres\modulos\nomina
mkdir dgcuadres\modulos\impuestos
mkdir dgcuadres\modulos\contabilidad

type nul > dgcuadres\modulos\__init__.py
type nul > dgcuadres\modulos\pos\__init__.py
type nul > dgcuadres\modulos\pos\vista.py
type nul > dgcuadres\modulos\cuadre\__init__.py
type nul > dgcuadres\modulos\cuadre\vista.py
type nul > dgcuadres\modulos\almacen\__init__.py
type nul > dgcuadres\modulos\almacen\vista.py
type nul > dgcuadres\modulos\catalogo\__init__.py
type nul > dgcuadres\modulos\catalogo\vista.py
type nul > dgcuadres\modulos\fichas_costo\__init__.py
type nul > dgcuadres\modulos\fichas_costo\vista.py
type nul > dgcuadres\modulos\gastos\__init__.py
type nul > dgcuadres\modulos\gastos\vista.py
type nul > dgcuadres\modulos\nomina\__init__.py
type nul > dgcuadres\modulos\nomina\vista.py
type nul > dgcuadres\modulos\impuestos\__init__.py
type nul > dgcuadres\modulos\impuestos\vista.py
type nul > dgcuadres\modulos\contabilidad\__init__.py
type nul > dgcuadres\modulos\contabilidad\vista.py

:: 6. Integraciones y Recursos
mkdir dgcuadres\integraciones
mkdir dgcuadres\recursos
mkdir dgcuadres\recursos\iconos
type nul > dgcuadres\integraciones\__init__.py
type nul > dgcuadres\integraciones\el_toque.py
type nul > dgcuadres\integraciones\impresora.py
type nul > dgcuadres\integraciones\reportes_pdf.py

echo.
echo ¡Estructura de carpetas y archivos creada con éxito!
pause