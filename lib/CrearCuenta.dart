import 'package:flutter/material.dart';
import 'package:flutter_app1/Terminos_screen.dart';

class Crearcuenta extends StatefulWidget {
  @override
  _CrearcuentaState createState() {
    return _CrearcuentaState();
  }
}

class _CrearcuentaState extends State<Crearcuenta> {
  // Controladores para manejar el texto ingresado en los campos de texto
  // final (no va cambiar el valor)
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paswordController = TextEditingController();
  final TextEditingController _confirPaswordController =
      TextEditingController();

  // Función para manejar el proceso de registro
  void _registro() {
    // Obtiene el valor de los campos de texto
    String email = _emailController.text;
    String pasword = _paswordController.text;
    String confirPasword = _confirPaswordController.text;
  }

  // Diseño/componentes
  @override
  // creacion de metodo
  Widget build(BuildContext context) {
    // pantalla
    return Scaffold(
      resizeToAvoidBottomInset: false, // error al salir teclado
      // Barra de la app
      appBar: AppBar(),
      // El body es toda la pantalla
      body: Padding(
        padding: EdgeInsets.all(20), // Espaciado alrededor del contenido
        // ubicar un campo debajo de otro
        child: Column(
          children: <Widget>[
            SizedBox(height: 10), // espacio entre componente
            // ubicacion de un componente
            Align(
              alignment: Alignment.topCenter, // Arriba-Centrado el text.
              child: Text(
                'Registrate', // text en pantalla
                style: TextStyle(
                  fontSize: 30, // tamaño del texto
                  color: Colors.black, // color del texto
                ),
              ),
            ),
            SizedBox(height: 40), // Espacio entre campos
            //
            // CONTENEDOR PRINCIPAL
            Container(
              // apecto del contenedor azul
              padding: EdgeInsets.all(15), // Margen
              width: 360, // ancho
              height: 460, // alto
              decoration: BoxDecoration(
                // bordes redondos contenedor
                borderRadius: BorderRadius.circular(30),
                // contenedor color
                color: Colors.teal.shade200,
              ),
              // ubicar un campo debajo de otro (column)
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40), // espacio entre campos
                  //
                  // CONTENEDOR 1
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(color: Colors.blueGrey.shade200),
                    //
                    // Campo de texto para el nombre de usuario
                    child: SizedBox(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black, // color texto ingresado
                        ),
                        obscureText: false, // ocultar Texto ingresado
                        controller: _emailController, // Asigna el controlador
                        decoration: InputDecoration(
                          border: OutlineInputBorder(), // activar vordes
                          labelText: 'Usuario',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20, // tamaño de etiqueta
                          ),
                          // icono a la derecha
                          suffixIcon: Icon(Icons.account_circle_outlined),
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
                    decoration: BoxDecoration(color: Colors.blueGrey.shade200),
                    //
                    // Campo de texto para el nombre de usuario
                    child: SizedBox(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black, // color texto ingresado
                        ),
                        obscureText: true, // ocultar Texto ingresado
                        controller: _paswordController, // Asigna el controlador
                        decoration: InputDecoration(
                          border: OutlineInputBorder(), // activar vordes
                          labelText: 'Contraseña',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20, // tamaño de etiqueta
                          ),
                          // icono a la derecha
                          suffixIcon: Icon(Icons.key_rounded),
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
                    decoration: BoxDecoration(color: Colors.blueGrey.shade200),
                    //
                    // Campo de texto para el nombre de usuario
                    child: SizedBox(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black, // color texto ingresado
                        ),
                        obscureText: true, // ocultar Texto ingresado
                        controller:
                            _confirPaswordController, // Asigna el controlador
                        decoration: InputDecoration(
                          border: OutlineInputBorder(), // activar vordes
                          labelText: 'Confirmar Contraseña',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20, // tamaño de etiqueta
                          ),
                          // icono a la derecha
                          suffixIcon: Icon(Icons.lock_open),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50), // espacio entre componentes
                  //
                  // creacion de botones
                  ElevatedButton(
                    // estilo del boton
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // color de boton
                      elevation: 20, // sombreado (efecto visual)
                    ),
                    // accion al hacer precion
                    onPressed: () {
                      // Navegar a la pantalla de "Crear Cuenta"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TerminosScreen(), // instancia
                        ),
                      );
                    },
                    // Texto del botón
                    child: Text(
                      'Confirmar',
                      style: TextStyle(
                        fontSize: 17, // tamaño del texto
                        color: Colors.white, //color del textos
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
