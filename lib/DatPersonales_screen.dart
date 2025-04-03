import 'package:flutter/material.dart';
import 'package:flutter_app1/barNavegacion.dart';
import 'package:flutter_app1/home_screen.dart';

class datosPersonales extends StatefulWidget {
  @override
  _datosPersonales createState() {
    return _datosPersonales();
  }
}

class _datosPersonales extends State<datosPersonales> {
  // Controladores para manejar el texto ingresado en los campos de texto
  // final (no va cambiar el valor)
  final TextEditingController _nombresController = TextEditingController();
  final TextEditingController _apellidosdController = TextEditingController();
  final TextEditingController _diagnosticoController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _contactoController = TextEditingController();
  // DIESEÑO INTERFAZ / COMPONENTES
  // Función para manejar el proceso de login
  void _datGuardar() {
    // Obtiene el valor de los campos de texto
    String nombre = _nombresController.text;
    String appellidos = _apellidosdController.text;
    String diagnostico = _diagnosticoController.text;
    String edad = _edadController.text;
    String contacto = _contactoController.text;
  }

  @override
  // Creacion de metodo
  Widget build(BuildContext context) {
    // PANTALLA
    return Scaffold(
      resizeToAvoidBottomInset: false, // error al salir teclado
      // Barra de la app
      appBar: AppBar(
        centerTitle: true, // centrar titulo
      ),
      body: Padding(
        padding: EdgeInsets.all(20), // Margen
        // ubicar un campo debajo de otro (column)
        child: Column(
          children: <Widget>[
            //SizedBox(height: 10), // espacio entre componente
            // ubicacion de un componente
            Align(
              alignment: Alignment.topCenter, // Arriba-centrado.
              child: Text(
                'Registro Datos\nPersonales', // text en pantalla
                style: TextStyle(
                  fontSize: 30, // tamaño del texto
                  color: Colors.black, // color del texto
                ),
                textAlign: TextAlign.center, // centrar texto
              ),
            ),
            SizedBox(height: 30), // espacio entre campos
            //
            // CONTENEDOR PRINCIPAL
            Container(
              // apecto del contenedor azul
              padding: EdgeInsets.all(15), // Margen
              width: 360, // ancho
              height: 600, // alto
              decoration: BoxDecoration(
                // bordes redondos contenedor
                borderRadius: BorderRadius.circular(30),
                // contenedor color
                color: Colors.teal.shade200,
              ),
              // ubicar un campo debajo de otro (column)
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25), // espacio entre campos
                  //
                  // CONTENEDOR 1
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200,
                      // bordes redondos contenedor
                      borderRadius: BorderRadius.circular(25),
                    ),
                    //
                    // Campo de texto Nombres
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black, // color texto ingrsado
                      ),
                      controller: _nombresController, // Asigna el controlador
                      decoration: InputDecoration(
                        labelText: 'Nombre(s)', // Etiqueta del campo
                        labelStyle: TextStyle(
                          fontSize: 20, // tamaño de labelText
                          color: Colors.black, // color de labelText
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Espacio entre los campos
                  //
                  // CONTENEDOR 2
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200,
                      // bordes redondos contenedor
                      borderRadius: BorderRadius.circular(25),
                    ),
                    //
                    // campo de texto Apellidos
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black, // color texto ingrsado
                      ),
                      controller:
                          _apellidosdController, // Asigna el controlador
                      decoration: InputDecoration(
                        labelText: 'Apellido(s)', // Etiqueta del campo
                        labelStyle: TextStyle(
                          fontSize: 20, // tamaño de labelText
                          color: Colors.black, // color de labelText
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Espacio entre los campos
                  //
                  // CONTENEDOR 3
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200,
                      // bordes redondos contenedor
                      borderRadius: BorderRadius.circular(25),
                    ),
                    // campo de texto Diagnostico Previo
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black, // color texto ingrsado
                      ),
                      controller:
                          _diagnosticoController, // Asigna el controlador
                      decoration: InputDecoration(
                        labelText: 'Diagnostico Previo', // Etiqueta del campo
                        labelStyle: TextStyle(
                          fontSize: 20, // tamaño de labelText
                          color: Colors.black, // color de labelText
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // espacio entre componentes
                  //
                  // CONTENEDOR 4
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200,
                      // bordes redondos contenedor
                      borderRadius: BorderRadius.circular(25),
                    ),
                    // campo de texto Confirmar contarseña
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black, // color texto ingrsado
                      ),
                      controller: _edadController, // Asigna el controlador
                      decoration: InputDecoration(
                        labelText: 'Edad', // Etiqueta del campo
                        labelStyle: TextStyle(
                          fontSize: 20, // tamaño de labelText
                          color: Colors.black, // color de labelText
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // espacio entre componentes
                  //
                  // CONTENEDOR 5
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200,
                      // bordes redondos contenedor
                      borderRadius: BorderRadius.circular(25),
                    ),
                    // campo de texto Contacto de Emergencia
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black, // color texto ingrsado
                      ),
                      controller: _contactoController, // Asigna el controlador
                      decoration: InputDecoration(
                        labelText:
                            'Contacto de Emergencia ', // Etiqueta del campo
                        labelStyle: TextStyle(
                          fontSize: 20, // tamaño de labelText
                          color: Colors.black, // color de labelText
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25), // espacio entre componentes
                  //
                  // Botón Confirmar
                  ElevatedButton(
                    // estilo del boton
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // color de boton
                      elevation: 20, // sombreado (efecto visual)
                    ),
                    // accion al hacer precion
                    onPressed: () {
                      // Navegar a la pantalla de "Barra Navegacion"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Barnavegacion(), // instancia
                        ),
                      );
                    },
                    child: Text(
                      'Confirmar',
                      style: TextStyle(
                        fontSize: 17, // tamaño del textos
                        color: Colors.white, // color de text
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
