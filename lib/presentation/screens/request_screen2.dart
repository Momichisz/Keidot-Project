import 'package:flutter/material.dart';
import 'request_screen3.dart'; // Importa la nueva pantalla

class RequestScreen2 extends StatefulWidget {
  @override
  _RequestScreen2State createState() => _RequestScreen2State();
}

class _RequestScreen2State extends State<RequestScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla anterior
          },
        ),
        centerTitle: true,
        title: Text(
          'Jardinería',
          style: TextStyle(color: Color(0xFF3BA670)),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60), // Altura de la barra de búsqueda
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar ubicación cercana',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Aquí puedes agregar más contenido si es necesario
            Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centra los botones horizontalmente
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Regresa a la pantalla anterior
                    },
                    child: Text(
                      'Cancelar',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  SizedBox(width: 20), // Espacio entre los botones
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RequestScreen3(), // Navega a RequestScreen3
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF12372A), // Color verde
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Elegir ubicación',
                      style: TextStyle(color: Colors.white),
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