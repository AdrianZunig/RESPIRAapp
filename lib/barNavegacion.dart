import 'package:flutter/material.dart';
import 'package:flutter_app1/actividad_screen.dart';
import 'package:flutter_app1/configuracion_screen.dart';
import 'package:flutter_app1/home_screen.dart';
import 'package:flutter_app1/resultados_screen.dart';
import 'package:flutter_app1/usuario_screen.dart';

class Barnavegacion extends StatefulWidget {
  @override
  _barNavegacionState createState() {
    return _barNavegacionState();
  }
}

class _barNavegacionState extends State<Barnavegacion> {
  // Variable de seleccion item/screen principal
  int seleccionIndex = 2; // posicion
  // Lista de todas las pantallas/páginas de tu app
  @override
  // Creacion de metodo
  Widget build(BuildContext context) {
    final interfaz = [
      ResultadosScreen(), // item 0
      ActividadScreen(), // item 1
      HomeScreen(), // item 2
      UsuarioScreen(), // item 3
      ConfiguracionScreen(), // item 4
    ];
    //
    // pantalla
    return Scaffold(
      //appBar: AppBar(),
      //
      // LLAMAR INTERFAZ por medio del arreglo
      body: interfaz[seleccionIndex],
      // MENU
      // Creacion Barra de navegacion
      bottomNavigationBar: BottomNavigationBar(
        // OPCION SELECCIONADA
        currentIndex: seleccionIndex,
        onTap: (newValor) {
          setState(() {
            seleccionIndex = newValor;
          });
        },
        items: [
          //item1 Estadistica
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_chart, // icono
              size: 30, // tamaño icono
            ),
            label: 'Resultados',
          ),
          // item2 Actividades
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today_outlined, // icono
              size: 30, // tamaño icono
            ),
            label: 'Actividades',
          ),

          // item3 inicio
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home, // icono
              size: 30, // tamaño icono
            ),
            label: 'Inicio',
          ),
          // item4 Usuario
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle, // icono
              size: 30, // tamaño icono
            ),
            label: 'Usuario',
          ),
          // item5 Configuracion
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings, // icono
              size: 30, // tamaño icono
            ),
            label: 'Configuracion',
          ),
        ],
      ),
    );
  }
}
