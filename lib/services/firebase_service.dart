import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

// Función para agregar datos a Firestore
Future<void> addUserData(Map<String, dynamic> userData) async {
  try {
    await db.collection('datosUsuario').add(userData);
    print("Datos registrados correctamente");
  } catch (e) {
    print("Error al registrar datos: $e");
  }
}
