import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '\$uper Precio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'img/icono/Superprecio.png', // Ruta de la imagen de inicio de sesión
              // Ajusta el ancho de la imagen según tus necesidades
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "Registrarme"
              },
              child: Text('Crear cuenta', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Color de fondo del botón
                padding: EdgeInsets.all(16), // Espaciado interno del botón
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "Iniciar sesión"
              },
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
