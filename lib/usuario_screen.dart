import 'package:flutter/material.dart';

class UsuarioScreen extends StatefulWidget {
  @override
  _ususarioScreenSate createState() {
    return _ususarioScreenSate();
  }
}

class _ususarioScreenSate extends State<UsuarioScreen> {
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
              'Usuario', // Título de la barra de la aplicación
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
          SizedBox(height: 30),
          Center(
            // Centra el contenido en el medio de la pantalla
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment
                      .center, // Centra verticalmente los elementos en la columna
              crossAxisAlignment:
                  CrossAxisAlignment
                      .center, // Centra horizontalmente los elementos en la columna
              children: [
                // Ícono de corazón centrado
                Icon(
                  Icons.account_circle,
                  size: 130, // tamaño
                ),
                SizedBox(height: 40), // Espacio entre el ícono y el contenedor
                //
                // CONTENEDOR PRINCIPAL
                Container(
                  padding: EdgeInsets.all(20), // Espacio dentro del contenedor
                  width: 360, // Ancho del contenedor
                  height: 400, // Alto del contenedor
                  decoration: BoxDecoration(
                    color:
                        Colors.green.shade200, // Color de fondo del contenedor
                    borderRadius: BorderRadius.circular(
                      30,
                    ), // Bordes redondeados
                  ),

                  child: SingleChildScrollView(
                    // Añadido para que el contenido sea desplazable si es necesario
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start, // Alineación de los textos a la izquierda
                      children: const [
                        SizedBox(height: 30),
                        //nombre del usuario
                        Text(
                          'Nombre completo:',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        SizedBox(height: 20), // Espacio entre los textos
                        //Edad del usuario
                        Text(
                          'Edad:',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        SizedBox(height: 20), // Espacio entre los textos
                        //diagnóstico del usuario
                        Text(
                          'Diagnóstico:',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        SizedBox(height: 20), // Espacio entre los textos
                        //tipo de sangre del usuario
                        Text(
                          'Tipo de sangre:',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        SizedBox(height: 20), // Espacio entre los textos
                        //número de emergencia del usuario
                        Text(
                          'Número de emergencia:',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
