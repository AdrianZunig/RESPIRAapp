import 'package:flutter/material.dart';

class ConseguroScreen extends StatefulWidget {
  @override
  _ConseguroScreenState createState() {
    return _ConseguroScreenState();
  }
}

class _ConseguroScreenState extends State<ConseguroScreen> {
  @override
  // creacion de metodo
  Widget build(BuildContext context) {
    // PANTALLA
    return Scaffold(
      backgroundColor: Colors.green.shade100, // color de fondo
      // Barra de la app
      appBar: AppBar(
        title: Text(
          'Respira', // Título de la barra de la aplicación
          style: TextStyle(
            fontSize: 25, // tamaño del texto
            color: Colors.black, // color del text-appBarr
            fontWeight: FontWeight.w600, // negrita
            fontStyle: FontStyle.italic, // tipografia
          ),
        ),
        centerTitle: true, // centrar titulo
      ),
      // body es toda la pantalla
      body: Padding(
        padding: EdgeInsets.all(20), // Margen
        // cntrar contenedores
        child: Center(
          // ubicar un campo debajo de otro (column)
          child: Column(
            children: <Widget>[
              //
              // CONTENODOR 1
              Container(
                // apecto del contenedor azul
                padding: EdgeInsets.all(15), // Margen
                width: 360, // ancho
                height: 100, // alto
                decoration: BoxDecoration(
                  // bordes redondos contenedor
                  borderRadius: BorderRadius.circular(30),
                  // contenedor color
                  color: Colors.green.shade50,
                ),
                //
                // ubicacion de un componente
                child: Align(
                  alignment: Alignment.center, // Arriba-centrado.
                  child: Text(
                    'Contacto Seguro', // text en pantalla
                    style: TextStyle(
                      fontSize: 30, // tamaño del texto
                      color: Colors.black, // color del texto
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40), // espacio entre componente
              //
              // CONTENODOR 2
              Container(
                // apecto del contenedor azul
                padding: EdgeInsets.all(15), // Margen
                width: 360, // ancho
                height: 300, // alto
                decoration: BoxDecoration(
                  // bordes redondos contenedor
                  borderRadius: BorderRadius.circular(30),
                  // contenedor color
                  color: Colors.green.shade50,
                ),
                // Creara texto
                child: Text(
                  'Recuerda esta persona es aquella que te ha acompañado en los momentos dificiles llamale no esta solo.', // text en pantalla
                  style: TextStyle(
                    fontSize: 20, // tamaño del texto
                    color: Colors.black, // color del texto
                  ),
                  textAlign: TextAlign.left, // centrar texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
