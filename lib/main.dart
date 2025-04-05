import 'package:flutter/material.dart';
import 'package:flutter_app1/loginView.dart';

void main() {
  // Inicia la aplicación Flutter
  runApp(MyApp());
}

// creacion de widget
class MyApp extends StatelessWidget {
  @override
  // creacion de meotodo
  Widget build(BuildContext context) {
    // Define la estructura principal de la aplicación
    return MaterialApp(
      //
      // ASIGNAR INTERFAZ
      home: Loginview(), // Pantalla inicial de la aplicación
      debugShowCheckedModeBanner: false, // quitar marca de agua
      //
      // TEMAS de UI
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.grey[200], // Color de fondo de las pantallas
        //
        // temas de la barra superior
        appBarTheme: AppBarTheme(
          color: Colors.white10, // Color del AppBar
        ),
        //
        // Temas para el BottomNavigationBar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color.fromARGB(
            225,
            0,
            121,
            107,
          ), // Color de fondo de la barra
          selectedItemColor: Colors.white, // Color del ítem seleccionado
          // Color de ítems no seleccionados
          unselectedItemColor: const Color.fromARGB(214, 0, 0, 0),
          // Tamaño ícono seleccionado
          selectedIconTheme: IconThemeData(size: 40),
          // mostrar label al seleccional el icon
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed, // Tipo de barra de navegación
        ),
      ),
    );
  }
}
