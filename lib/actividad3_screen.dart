import 'package:flutter/material.dart';

class Actividad3Screen extends StatefulWidget {
  @override
  _actividad3ScreenState createState() {
    return _actividad3ScreenState();
  }
}

class _actividad3ScreenState extends State<Actividad3Screen> {
  // DISEÑO INTERFAZ / COMPONENTES
  @override
  Widget build(BuildContext context) {
    // PANTALLA
    return Scaffold(
      // Barra de la app
      appBar: AppBar(
        title: Text(
          'Actividad 3', // Título de la barra de la aplicación
          style: TextStyle(
            fontSize: 25, // tamaño del texto
            color: Colors.black, // color del text-appBarr
            fontWeight: FontWeight.w600, // negrita
            fontStyle: FontStyle.italic, // tipografia
          ),
        ),
        centerTitle: true, // centrar titulo
        automaticallyImplyLeading: true, // Habilita el botón de retroceso
      ),
      body: Padding(
        padding: EdgeInsets.all(20), // Margen
        child: Center(
          //
          // CONTENEDOR PRINCIPAL
          child: Container(
            height: 650, // alto
            width: 360, // ancho
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(15), // margen
            decoration: BoxDecoration(
              color: Colors.green.shade200, // color de fondo
              borderRadius: BorderRadius.circular(30),
            ),
            // ubicar un campo debajo de otro (column)
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // CONTENEDOR 1
                Container(
                  height: 80,
                  width: 350,
                  padding: EdgeInsets.all(7), // margen
                  decoration: BoxDecoration(
                    color: Colors.green.shade50, // color de contenedor
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // ubicar componentes en fila
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20), // espacio entre componentes
                      // Creacion de icocno
                      Icon(
                        Icons.auto_awesome_sharp, // Ícono
                        color: Colors.black,
                        size: 45.0,
                      ),
                      SizedBox(width: 60), // espacio entre componentes

                      Text(
                        'Metas',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.bold, // negrita
                        ),
                        textAlign: TextAlign.center, // cnetrar texto
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Espacio entre los Containers
                // CONTENEDOR 2
                Container(
                  padding: EdgeInsets.all(15), // margen
                  height: 430, // alto
                  width: 350, // ancho

                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.green.shade50, // color de contenedor
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // Creara texto
                  child: Text(
                    'Recuerda el objetivo de tu vida es, terminar la escuela y no te rindas erez muy capaz de todo solo un paso a la vez',
                    style: TextStyle(
                      fontSize: 20, // tamaño del texto
                      color: Colors.black, // color del texto
                    ),
                    textAlign: TextAlign.justify, // justificar texto
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
