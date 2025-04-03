import 'package:flutter/material.dart';
import 'package:flutter_app1/loginView.dart';

class ConfiguracionScreen extends StatefulWidget {
  @override
  _configuracionScreenState createState() {
    return _configuracionScreenState();
  }
}

class _configuracionScreenState extends State<ConfiguracionScreen> {
  // variable
  bool _isDarkMode = false;
  // metodo
  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  // Función para mostrar un mensaje cuando se presiona un botón
  void _onButtonPressed(String buttonName) {}

  @override
  Widget build(BuildContext context) {
    // PANTALLA
    return Container(
      // ubicar un campo debajo de otro (column)
      child: Column(
        children: <Widget>[
          // Barra de la app
          AppBar(
            title: Text(
              'Configuraciones', // Título de la barra de la aplicación
              style: TextStyle(
                fontSize: 25, // tamaño del texto
                color: Colors.black, // color del text-appBarr
                fontWeight: FontWeight.w600, // negrita
                fontStyle: FontStyle.italic, // tipografia
              ),
            ),
            automaticallyImplyLeading: false, // Habilita el botón de retroceso
            centerTitle: true, // centrar titulo
          ),
          SizedBox(height: 70), // espacio entre campos
          Center(
            // CONTENEDOR PRINCIPAL
            child: Container(
              padding: EdgeInsets.all(15), // Espacio dentro del contenedor
              width: 360, // Ancho del contenedor
              height: 460, // Alto del contenedor
              decoration: BoxDecoration(
                color: Colors.green.shade200, // color de fondo,
                borderRadius: BorderRadius.circular(30), // Bordes redondeados
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // arriba
                crossAxisAlignment:
                    CrossAxisAlignment
                        .center, // Centra los botones horizontalmente
                children: <Widget>[
                  SizedBox(height: 50), // espacio entre componentes
                  // BOTON 1 modo oscuro
                  ElevatedButton(
                    // estilo del boton
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade50, // color de boton
                      elevation: 20, // sombreado (efecto visual)
                      minimumSize: Size(250, 60),
                    ),
                    // accion al hacer precion
                    onPressed: _toggleTheme,
                    child: Text(
                      'Modo oscuro',
                      style: TextStyle(
                        fontSize: 17, // tamaño del textos
                        color: Colors.black, // color de text
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // espacio entre componentes
                  // BOTON 2 modo oscuro
                  ElevatedButton(
                    // estilo del boton
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade50, // color de boton
                      elevation: 20, // sombreado (efecto visual)
                      minimumSize: Size(250, 60),
                    ),
                    // accion al hacer precion
                    onPressed: () => _onButtonPressed('Botón 2'),
                    child: Text(
                      'Seguridad',
                      style: TextStyle(
                        fontSize: 17, // tamaño del textos
                        color: Colors.black, // color de text
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // espacio entre componentes
                  // BOTON 1 modo oscuro
                  ElevatedButton(
                    // estilo del boton
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade50, // color de boton
                      elevation: 20, // sombreado (efecto visual)
                      minimumSize: Size(250, 60),
                    ),
                    // accion al hacer precion
                    // accion al hacer precion
                    onPressed: () {
                      // Navegar a la pantalla de "Crear Cuenta"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginview(), // instancia
                        ),
                      );
                    },
                    child: Text(
                      'Cerrar Sesión',
                      style: TextStyle(
                        fontSize: 17, // tamaño del textos
                        color: Colors.black, // color de text
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // espacio entre componentes
                  // BOTON 1 modo oscuro
                  ElevatedButton(
                    // estilo del boton
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade50, // color de boton
                      elevation: 20, // sombreado (efecto visual)
                      minimumSize: Size(250, 60),
                    ),
                    // accion al hacer precion
                    onPressed: () => _onButtonPressed('Botón 4'),
                    child: Text(
                      'Vinculación en el sensor',
                      style: TextStyle(
                        fontSize: 17, // tamaño del textos
                        color: Colors.black, // color de text
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
