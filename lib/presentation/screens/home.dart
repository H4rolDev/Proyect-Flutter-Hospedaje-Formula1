import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.habitaciones);
          },
          child: Text('Go Habitaciones'),
        ),
      ),
    );
  }
}
