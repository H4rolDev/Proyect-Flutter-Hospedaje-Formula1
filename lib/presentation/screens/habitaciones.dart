import 'package:flutter/material.dart';
import 'package:flutter_hospedajef1/presentation/widgets/widgetBar.dart';

class Habitaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              'Limpieza',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold

              ),
            )
          ],
        )
      ),
    );
  }
}
