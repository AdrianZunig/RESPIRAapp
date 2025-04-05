import 'package:flutter/material.dart';
import 'package:flutter_app1/actividad1_screen.dart';
import 'package:flutter_app1/actividad2_screen.dart';
import 'package:flutter_app1/actividad3_screen.dart';

class ActividadScreen extends StatefulWidget {
  @override
  _actividadScreenState createState() {
    return _actividadScreenState();
  }
}

class _actividadScreenState extends State<ActividadScreen> {
  @override
  Widget build(BuildContext context) {
    // PANTALLA
    return Container(
      // ubicar un campo debajo de otro (column)
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Actividades', // Título de la barra de la aplicación
              style: TextStyle(
                fontSize: 25, // tamaño del texto
                color: Colors.black, // color del text-appBarr
                fontWeight: FontWeight.w600, // negrita
                fontStyle: FontStyle.italic, // tipografia
              ),
            ),
            centerTitle: true, // centrar titulo
          ),
          SizedBox(height: 100), // espacio entre campos
          // centrar componente
          Center(
            // CONTENEDOR PRINCIPAL
            child: Container(
              // apecto del contenedor azul
              padding: EdgeInsets.all(15), // Margen
              width: 360, // ancho
              height: 450, // alto
              decoration: BoxDecoration(
                // bordes redondos contenedor
                borderRadius: BorderRadius.circular(30),
                color: Colors.green.shade200, // color de contenedor
              ),
              // centrar componentes
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50), // espacio entre componentes
                    // BOTON 1
                    ElevatedButton(
                      // estilo del boton
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade50, // color de boton
                        elevation: 20, // sombreado (efecto visual)
                        minimumSize: Size(250, 60), // ancho, alto del botton
                      ),
                      // accion al hacer precion
                      onPressed: () {
                        // Navegar a la pantalla de "Crear Cuenta"
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => Actividad1Screen(), // instancia
                          ),
                        );
                      },
                      // ubicar componentes en fila
                      child: Row(
                        children: <Widget>[
                          // Creacion de icocno
                          Icon(
                            Icons.run_circle_outlined, // Ícono
                            color: Colors.black,
                            size: 40,
                          ),
                          SizedBox(width: 50), // espacion entre componenetes
                          Text(
                            'Actividad\nCorrer',
                            style: TextStyle(
                              fontSize: 18, // tamaño del textos
                              color: Colors.black, // color de text
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // espacio entre componentes
                    // BOTON 2
                    ElevatedButton(
                      // estilo del boton
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade50, // color de boton
                        elevation: 20, // sombreado (efecto visual)
                        minimumSize: Size(250, 60),
                      ),
                      // accion al hacer precion
                      onPressed: () {
                        // Navegar a la pantalla de "Crear Cuenta"
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => Actividad2Screen(), // instancia
                          ),
                        );
                      },
                      // ubicar componentes en fila
                      child: Row(
                        children: <Widget>[
                          // Creacion de icocno
                          Icon(
                            Icons.surfing, // Ícono
                            color: Colors.black,
                            size: 40,
                          ),
                          SizedBox(width: 50), // eapcio entre componentes
                          Text(
                            'Actividad\nNadar',
                            style: TextStyle(
                              fontSize: 18, // tamaño del textos
                              color: Colors.black, // color de text
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // espacio entre componentes
                    // BOTON 3
                    ElevatedButton(
                      // estilo del boton
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade50, // color de boton
                        elevation: 20, // sombreado (efecto visual)
                        minimumSize: Size(250, 60),
                      ),
                      // accion al hacer precion
                      onPressed: () {
                        // Navegar a la pantalla de "Crear Cuenta"
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => Actividad3Screen(), // instancia
                          ),
                        );
                      },
                      // ubicar componentes en fila
                      child: Row(
                        children: <Widget>[
                          // Creacion de icocno
                          Icon(
                            Icons.auto_awesome_sharp, // Ícono
                            color: Colors.black,
                            size: 45.0,
                          ),
                          SizedBox(width: 50), // espacio entre componentes
                          Text(
                            'Actividad\nMetas',
                            style: TextStyle(
                              fontSize: 18, // tamaño del textos
                              color: Colors.black, // color de text
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
