import 'package:flutter/material.dart';
import 'package:flutter_app1/DatPersonales_screen.dart';
// creacion de w

class TerminosScreen extends StatefulWidget {
  @override
  _TerminosState createState() {
    return _TerminosState();
  }
}

class _TerminosState extends State<TerminosScreen> {
  bool? checar = false;
  // DISEÑO DE INTERFAZ / COMPONENTES
  @override
  // creacion de metodo
  Widget build(BuildContext context) {
    // pantalla
    return Scaffold(
      resizeToAvoidBottomInset: false, // error al salir teclado
      // Barra de la app
      appBar: AppBar(),
      // body es toda la pantalla
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
                'Términos y\n condiciones', // text en pantalla
                style: TextStyle(
                  fontSize: 30, // tamaño del texto
                  color: Colors.black, // color del texto
                ),
                textAlign: TextAlign.center, // cnetrar texto
              ),
            ),
            SizedBox(height: 20), // espacio entre campos
            //
            // CONTENEDOR PRINCIPAL
            Container(
              // apecto del contenedor azul
              padding: EdgeInsets.all(15), // Margen
              width: 360, // ancho
              height: 550, // alto
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
                  SizedBox(height: 20), // espacio entre componentes
                  //
                  // CONTENEDOR 1
                  Container(
                    padding: EdgeInsets.all(15), // Margen
                    width: 330, // ancho
                    height: 400, // alto
                    decoration: BoxDecoration(
                      // bordes redondos contenedor
                      borderRadius: BorderRadius.circular(30),
                      // contenedor color
                      color: Colors.white,
                    ),

                    // UBICAR UN COMPONENTE DEBAJO DE OTRO
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Al usar esta app se compromete a...',
                          style: TextStyle(
                            fontSize: 20, // tamaño del texto
                            color: Colors.black, // color del texto
                          ),
                          textAlign: TextAlign.left, // texto a la izquierda
                        ),
                        SizedBox(height: 240), // espacio entre componenetes
                        //
                        // CHECKBOX
                        CheckboxListTile(
                          title: Text(
                            'Aceptar terminos y condiciones',
                            style: TextStyle(
                              fontSize: 17, // tamaño del texto
                              color: Colors.black, // color del texto
                            ),
                            textAlign: TextAlign.left, // texto a la izquierda
                          ),
                          value: checar,
                          onChanged: (bool? newValor) {
                            setState(() {
                              checar = newValor;
                            });
                          },
                          activeColor:
                              Colors.blue, // color al seleccionar checkbox
                          controlAffinity: // ubicar 1)checkbox 2)text
                              ListTileControlAffinity.leading,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40), // espacion entre componentes
                  //
                  // Botón para Crear cuenta
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
                          builder: (context) => datosPersonales(), // instancia
                        ),
                      );
                    },
                    child: Text(
                      'Aceptar', // Texto del botón
                      style: TextStyle(
                        fontSize: 17, // tamaño del texto
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
