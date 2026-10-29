import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from PySide6.QtWidgets import QApplication

from arranque.estilos import TEMA_MODERNO
from interfaz.ventana_principal import VentanaPrincipal
from nucleo.base_datos.conexion import ConexionBD
from nucleo.base_datos.migraciones import GestorMigraciones


def iniciar_sistema() -> None:
    GestorMigraciones.inicializar_base_datos()
    aplicacion = QApplication(sys.argv)
    aplicacion.setStyleSheet(TEMA_MODERNO)
    aplicacion.aboutToQuit.connect(ConexionBD.cerrar_conexion)

    ventana = VentanaPrincipal()
    ventana.show()
    sys.exit(aplicacion.exec())


if __name__ == "__main__":
    iniciar_sistema()
