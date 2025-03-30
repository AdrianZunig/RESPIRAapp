import 'package:flutter/material.dart';

// cracion de Widget
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  // variable Seleccion de pestaña
  int selecIndex = 0;
  // DISEÑO INTERFAZ/COMPONENTES
  @override
  // Creacion de metodo
  Widget build(BuildContext context) {
    // pantalla
    return Scaffold(
      resizeToAvoidBottomInset: false, // error al salir teclado
      // Barra de la app
      appBar: AppBar(
        title: Text(
          'Respira', // Título de la barra de la aplicación
          style: TextStyle(
            fontSize: 25, // tamaño del texto
            color: Colors.black, // color del text-appBarr
            fontStyle: FontStyle.italic, // tipografia
          ),
        ),
        centerTitle: true, // centrar titulo
      ),
      // body es toda la pantalla
      body: Padding(
        padding: EdgeInsets.all(20), // Margen
        // Ubicacion del cintenedor
        child: Align(
          alignment: Alignment.center, // Arriba-centrado.
          //
          // CONTENEDOR PRINCIPAL
          child: Container(
            // Aspecto del contenedor
            padding: EdgeInsets.all(15), // Margen
            width: 250, // ancho
            height: 250, // alto
            decoration: BoxDecoration(
              // bordes redondos contenedor
              borderRadius: BorderRadius.circular(200),
              // contenedor color
              color: Colors.red.shade300,
            ),
            //
            // CONTENEDOR 1
            child: Container(
              // Aspecto del contenedor
              padding: EdgeInsets.all(50), // Margen
              width: 10, // ancho
              height: 10, // alto
              decoration: BoxDecoration(
                // bordes redondos contenedor
                borderRadius: BorderRadius.circular(200),
                // contenedor color
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

      // MENU
      // Creacion Barra de navegacion
      bottomNavigationBar: BottomNavigationBar(
        // cual es la opccion seleccionada
        currentIndex: selecIndex,
        // nueva seleccion de index
        onTap: (value) {
          setState(() {
            selecIndex = value;
          });
        },
        items: const [
          // item1 Estadistica
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_chart, // icono
              size: 30, // tamaño icono
            ),
            label: 'Estadistica',
          ),
          // item2 Actividades
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today_outlined, // icono
              size: 30, // tamaño icono
            ),
            label: 'Actividades',
          ),
          // item3 inicio
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home, // icono
              size: 30, // tamaño icono
            ),
            label: 'Inicio',
          ),
          // item4 Usuario
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle, // icono
              size: 30, // tamaño icono
            ),
            label: 'Usuario',
          ),
          // item5 Configuracion
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings, // icono
              size: 30, // tamaño icono
            ),
            label: 'Ajustes',
          ),
        ],
      ),
    );
  }
}
