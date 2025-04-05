import 'package:flutter/material.dart';
import 'package:flutter_app1/Apoyo_screen.dart';
import 'package:flutter_app1/barNavegacion.dart';
import 'package:flutter_app1/loginView.dart';

// cracion de Widget
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  // DISEÑO INTERFAZ/COMPONENTES
  @override
  // Creacion de metodo
  Widget build(BuildContext context) {
    //
    // pantalla
    return Container(
      // ubicar un componente debajo de otro (column)
      child: Column(
        children: <Widget>[
          // Barra de la app
          AppBar(
            title: Text(
              'Inicio', // Título de la barra de la aplicación
              style: TextStyle(
                fontSize: 25, // tamaño del texto
                color: Colors.black, // color del text-appBarr
                fontWeight: FontWeight.w600, // negrita
                fontStyle: FontStyle.italic, // tipografia
              ),
            ),
            centerTitle: true, // centrar titulo
            automaticallyImplyLeading: false, // Habilita el botón de retroceso
          ),
          SizedBox(height: 200),
          // body es toda la pantalla
          Padding(
            padding: EdgeInsets.all(20), // Margen
            // Ubicacion del contenedor
            child: Align(
              alignment: Alignment.center, // ubicacion de componente
              //
              // CONTENEDOR PRINCIPAL
              child: Container(
                // Aspecto del contenedor
                padding: EdgeInsets.all(50), // Margen
                width: 280, // ancho
                height: 280, // alto
                decoration: BoxDecoration(
                  // bordes redondos contenedor
                  borderRadius: BorderRadius.circular(200),
                  // contenedor color
                  color: Colors.red.shade300,
                ),
                //
                // Crear boton "llamada"
                child: ElevatedButton(
                  // estilo del boton
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // color de boton
                    elevation: 20, // sombreado (efecto visual)
                  ),
                  // accion al hacer precion
                  onPressed: () {
                    // Navegar a la pantalla de "llamado/apoyo"
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApoyoScreen(), // instancia
                      ),
                    );
                  },
                  child: Text(
                    'Llamada',
                    style: TextStyle(
                      fontSize: 30, // tamaño del textos
                      color: Colors.black, // color de text
                    ),
                    textAlign: TextAlign.center, // cnetrar texto
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
