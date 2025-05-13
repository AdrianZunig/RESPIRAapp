import 'package:cloud_firestore/cloud_firestore.dart';
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
  // ocultar contraseña
  bool _ocultarText =
      true; // Variable para controlar si el texto está oculto o no
  bool _ocultarText2 =
      true; // Variable para controlar si el texto está oculto o no
  // Función para manejar el proceso de registro
  Future<void> _registro() async {
    // Obtiene el valor de los campos de texto
    String email = _emailController.text.trim();
    String password = _paswordController.text.trim();
    String confirmPassword = _confirPaswordController.text.trim();

    // Validar que los campos no estén vacíos
    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, completa todos los campos')),
      );
      return;
    }

    // Validar que las contraseñas coincidan
    if (password != confirmPassword) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Las contraseñas no coinciden')));
      return;
    }
    try {
      // Guardar los datos en Firestore
      await FirebaseFirestore.instance.collection('usuarios').add({
        'email': email,
        'password':
            password, // Nota: No es seguro guardar contraseñas en texto plano
        'createdAt': Timestamp.now(),
      });

      // Mostrar mensaje de éxito
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Cuenta creada exitosamente')));

      // Navegar a la pantalla de términos
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TerminosScreen()),
      );
    } catch (e) {
      // Manejar errores
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error al crear la cuenta: $e')));
    }
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
                        controller: _emailController, // Asigna el controlador
                        decoration: InputDecoration(
                          // activar bordes
                          border: OutlineInputBorder(
                            // bordes redondos
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Correo',
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
                        obscureText: _ocultarText, // ocultar Texto ingresado
                        controller: _paswordController, // Asigna el controlador
                        decoration: InputDecoration(
                          // activar bordes
                          border: OutlineInputBorder(
                            // bordes redondos
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Contraseña',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20, // tamaño de etiqueta
                          ),
                          // icono a la derecha
                          suffixIcon: IconButton(
                            // accion al precionar icon
                            onPressed: () {
                              setState(() {
                                _ocultarText =
                                    !_ocultarText; // Cambia el valor entre true/false
                              });
                            },
                            // icono
                            icon: Icon(
                              _ocultarText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
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
                    // Campo de texto confirmar contraseña
                    child: SizedBox(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black, // color texto ingresado
                        ),
                        obscureText: _ocultarText2, // ocultar Texto ingresado
                        controller:
                            _confirPaswordController, // Asigna el controlador
                        decoration: InputDecoration(
                          // activar bordes
                          border: OutlineInputBorder(
                            // bordes redondos
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Confirmar Contraseña',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20, // tamaño de etiqueta
                          ),
                          // icono a la derecha
                          suffixIcon: IconButton(
                            // accion al precionar icon
                            onPressed: () {
                              setState(() {
                                _ocultarText2 =
                                    !_ocultarText2; // Cambia el valor entre true/false
                              });
                            },
                            // icono
                            icon: Icon(
                              _ocultarText2
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
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
