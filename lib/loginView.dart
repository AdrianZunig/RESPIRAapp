import 'package:flutter/material.dart';
import 'package:flutter_app1/CrearCuenta.dart';
import 'package:flutter_app1/barNavegacion.dart';
import 'package:flutter_app1/home_screen.dart';

class Loginview extends StatefulWidget {
  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<Loginview> {
  // Controladores para manejar el texto ingresado en los campos de texto
  // final (no va cambiar el valor)
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Función para manejar el proceso de login
  void _login() {
    // Obtiene el valor de los campos de texto
    String username = _usernameController.text;
    String password = _passwordController.text;
  }

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
        automaticallyImplyLeading: false, // Habilita el botón de retroceso
      ),
      // body es toda la pantalla
      body: Padding(
        padding: EdgeInsets.all(20), // Margen
        // ubicar un componente debajo de otro (column)
        child: Column(
          children: <Widget>[
            SizedBox(height: 10), // espacio entre componente
            // ubicacion de un componente
            Align(
              alignment: Alignment.topCenter, // Arriba-centrado.
              child: Text(
                'Bienvenido', // text en pantalla
                style: TextStyle(
                  fontSize: 30, // tamaño del texto
                  color: Colors.black, // color del texto
                ),
              ),
            ),
            SizedBox(height: 40), // espacio entre componente
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
              //
              // ubicar un campo debajo de otro (column)
              child: Column(
                children: <Widget>[
                  SizedBox(height: 70), // Espacio entre los campos
                  //
                  // CONTENEDOR 1
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200, // color contenedor
                    ),
                    //
                    // Campo de texto para el nombre de usuario
                    child: SizedBox(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black, // color texto ingresado
                        ),
                        obscureText: false, // ocultar Texto ingresado
                        controller:
                            _usernameController, // Asigna el controlador
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
                  SizedBox(height: 60), // Espacio entre los campos
                  //
                  // CONTENEDOR 2
                  Container(
                    padding: EdgeInsets.all(7), // Margen
                    width: 355, // ancho
                    height: 75, // alto
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200, // color contenedor
                    ),
                    //
                    // Campo de texto para el nombre de usuario
                    child: SizedBox(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black, // color texto ingresado
                        ),
                        obscureText: true, // ocultar Texto ingresado
                        controller:
                            _passwordController, // Asigna el controlador
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
                  SizedBox(height: 40), // Espacio entre los campos
                  //
                  // Botón para realizar el login
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
                      'Iniciar Sesión',
                      style: TextStyle(
                        fontSize: 17, // tamaño del textos
                        color: Colors.white, // color de text
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espacio entre los campos
            //
            // Botón para Crear cuenta
            TextButton(
              // accion al hacer precion
              onPressed: () {
                // Navegar a la pantalla de "Crear Cuenta"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Crearcuenta(), // instancia
                  ),
                );
              },
              child: Text(
                'No tienes cuenta? Has clic aquí', // Texto del botón
                style: TextStyle(
                  fontSize: 17, // tamaño del texto
                  color: Color.fromARGB(255, 0, 0, 1), // color de text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
