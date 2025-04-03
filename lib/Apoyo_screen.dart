import 'package:flutter/material.dart';
import 'package:flutter_app1/ConSeguro_screen.dart';

class ApoyoScreen extends StatefulWidget {
  @override
  _ApoyoScreenState createState() {
    return _ApoyoScreenState();
  }
}

class _ApoyoScreenState extends State<ApoyoScreen> {
  // DISEÑO INTERFAZ/COMPONENTES
  @override
  // Creacion de metodo
  Widget build(BuildContext context) {
    /*/ pantalla*/
    return Scaffold(
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
        // centrar contenedores
        child: Center(
          // ubicar un campo debajo de otro (column)
          child: Column(
            children: <Widget>[
              SizedBox(height: 40),
              // ubicacion del text
              Align(
                alignment: Alignment.topCenter, // Arriba-centrado.
                child: Text(
                  'Respira y mantén la calma estamos\nlamado a tu contacto de emergencia ',
                  style: TextStyle(
                    fontSize: 22, // tamaño del texto
                    color: Colors.black, // color del texto
                  ),
                  textAlign: TextAlign.center, // cnetrar texto
                ),
              ),
              SizedBox(height: 50), // espacio entre componentes
              //
              // Crear boton "llamada"
              ElevatedButton(
                // estilo del boton
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20), // Margen
                  backgroundColor: Colors.green, // color de boton
                  elevation: 20, // sombreado (efecto visual)
                  shape: CircleBorder(), // Esto hace el botón circular
                  fixedSize: Size(200, 200), // ancho y alto
                ),
                // accion al hacer precion
                onPressed: () {
                  // Navegar a la pantalla de "home / inicio"
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConseguroScreen(), // instancia
                    ),
                  );
                },
                child: Align(
                  // ubicacion de componente
                  alignment: Alignment.center,
                  child: Text(
                    'Contacto\n Seguro',
                    style: TextStyle(
                      fontSize: 20, // tamaño del textos
                      color: Colors.black, // color de text
                    ),
                    textAlign: TextAlign.center, // cnetrar texto
                  ),
                ),
              ),
              SizedBox(height: 40), // espacio entre componentes
              //
              // Crear boton "llamada"
              ElevatedButton(
                // estilo del boton
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20), // Margen
                  backgroundColor: Colors.pinkAccent, // color de boton
                  elevation: 20, // sombreado (efecto visual)
                  shape: CircleBorder(), // Esto hace el botón circular
                  fixedSize: Size(200, 200), // ancho y alto
                ),
                onPressed: ApoyoScreen.new,
                child: Align(
                  // ubicacion de componente
                  alignment: Alignment.center,
                  child: Text(
                    'Consejero\n800 520 0102',
                    style: TextStyle(
                      fontSize: 20, // tamaño del textos
                      color: Colors.black, // color de text
                    ),
                    textAlign: TextAlign.center, // cnetrar texto
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
