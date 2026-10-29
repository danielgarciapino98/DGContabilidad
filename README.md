# DG CUADRES POS

Aplicación de escritorio para gestión comercial local construida con PySide6 y SQLite.

## Funciones

- **POS:** búsqueda por nombre/código, cálculo de cambio y cobros en CUP, USD, EUR y MLC; conteo de billetes por moneda e impresión en la XP-80 detectada en Windows.
- **Caja:** apertura, resumen de efectivo/transferencias/gastos, arqueo y cierre.
- **Catálogo:** alta, actualización y eliminación de productos sin historial; los productos con movimientos, ventas o fichas de costo se conservan y se pueden desactivar.
- **Inventario:** entradas, salidas, mermas y ajustes con historial y efecto contable.
- **Gastos:** registro por cuenta contable.
- **Fichas de costo:** desglose de insumos, costo de preparación y unidad, rendimiento, margen y precio sugerido.
- **Nómina:** trabajadores, cálculo por período, bonos, deducciones y estado pendiente/pagado.
- **Impuestos:** mantenimiento de tasas y descripciones; no se aplican automáticamente a cada venta.
- **Contabilidad:** cuentas, asientos de partida doble, diario, períodos y balance de comprobación.
- **Reportes:** exportación PDF de ventas e inventario.
- **LIA:** asesora en español que consulta, en modo de solo lectura, ventas e ingresos brutos, caja, gastos, inventario y movimientos, nómina, impuestos y saldos/resultados contables; separa ventas brutas de resultados contabilizados. Envía el contexto disponible y el historial reciente de la conversación al modelo local, enseña los flujos reales del programa y permite limpiar el chat. No modifica datos ni realiza operaciones por el usuario.

## Instalar y ejecutar

1. Instala Python 3.11 o superior.
2. Ejecuta `instalar.bat`.
3. Ejecuta `ejecutar.bat`.

La aplicación principal utiliza `dgcuadres.db`, ubicada junto a `main.py`. Antes de actualizar, cierra el programa y realiza una copia de seguridad de ambas bases de datos que acompañan el proyecto. Las migraciones no deben sustituir tus archivos de datos.

## Flujo recomendado

1. Revisa Configuración.
2. En Configuración, revisa Ollama en `http://127.0.0.1:8080`, el modelo (`gemma3`) y el formato de API que ofrece tu servidor. Usa **OpenAI compatible** para `/v1/chat/completions` y **Ollama nativo** para `/api/chat`; el botón de prueba lista los modelos del servidor. Si recibes HTTP 401, introduce la clave API válida del servidor o borra el campo si no requiere autenticación. La aplicación detecta la XP-80 entre las impresoras instaladas en Windows; la URL del asistente debe ser local.
3. Crea productos en Catálogo.
4. Abre la caja desde Cuadre.
5. Registra ventas desde POS. Para contar billetes, selecciona pago en efectivo y moneda CUP, USD o EUR. Se cuentan billetes, no monedas.
6. Registra movimientos en Almacén y gastos en Gastos.
7. Revisa la Contabilidad.
8. Crea fichas de costo y administra Nómina cuando corresponda.
9. Declara el efectivo contado y cierra el turno.

## Límites que deben conocerse

- Las tasas configuradas en Impuestos todavía no se aplican automáticamente a las ventas.
- El precio recomendado en Fichas de costo no modifica el precio del Catálogo sin aprobación.
- Revisa los reportes contables y fiscales antes de usarlos para cumplimiento oficial.
- Ollama debe estar ejecutándose localmente y tener descargado el modelo `gemma3` (por ejemplo, `ollama pull gemma3`). Las respuestas generadas pueden equivocarse: confirma los datos importantes en los módulos del sistema. La clave API opcional se guarda sin cifrar en la base local; Ollama local normalmente no requiere una.
- Un servidor en el puerto `8080` puede usar una ruta OpenAI compatible distinta de la API nativa de Ollama. Configura el formato correcto en Configuración y prueba la conexión antes de consultar.
- La aplicación busca la impresora XP-80 en las impresoras instaladas por Windows, sin requerir que se escriba su nombre en Configuración. Si no está instalada o falla la impresión, la venta queda registrada y se informa del error; el controlador de impresión y el tamaño del papel se configuran en Windows.
- La ventana principal se ajusta al espacio disponible en la pantalla para evitar que el tamaño inicial exceda la resolución.
