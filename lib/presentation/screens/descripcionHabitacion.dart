import 'package:flutter/material.dart';

class DescripcionHabitacion extends StatelessWidget {
  const DescripcionHabitacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descripción de Habitación', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.hotel, size: 24),
                        SizedBox(width: 8),
                        Text(
                          'Habitación 103',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Descripción de la habitación',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Habitación matrimonial con cama de dos plazas y media, '
                      '1 juego de sábanas negras Okaeri de 2 plazas, 2 almohadas con sus fundas, '
                      '2 toallas, 1 silla, piso sensible a fuertes ácidos, cortinas térmicas color gris.',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      // child: Image.network(
                      //   'https://via.placeholder.com/350x150', 
                      //   height: 150,
                      //   width: double.infinity,
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Productos',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ListTile(
                          title: Text('Toallas'),
                          trailing: Text('x 5'),
                        ),
                        ListTile(
                          title: Text('Frasadas'),
                          trailing: Text('x 2'),
                        ),
                        ListTile(
                          title: Text('Almohadas'),
                          trailing: Text('x 2'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              onPressed: () {
                // Acción para iniciar la limpieza
              },
              child: const Text(
                'Iniciar Limpieza',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
