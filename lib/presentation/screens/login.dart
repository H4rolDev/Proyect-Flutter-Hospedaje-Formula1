// screens/login.dart
import 'package:flutter/material.dart';
import 'package:flutter_hospedajef1/core/colors.dart';
import 'package:flutter_hospedajef1/presentation/navigation/app_routes.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.loginBg,
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 650,
                child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover,),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 17.0, bottom: 8.0),
                  child: Text(
                    'Usuario',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ingrese su usuario',
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 17.0, bottom: 8.0),
                  child: Text(
                    'Contraseña',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ingerese su contraseña',
                    prefixIcon: Icon(Icons.lock),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Ink(
                  decoration:BoxDecoration(
                    color: Color(0xff7B6428),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: SizedBox(
                    width: 550,
                    height: 60,
                    child: Center(
                      child: Text(
                        'Ingresar', 
                        style: TextStyle(
                          fontSize: 17, color: Colors.white
                        )
                      ),
                    ),
                  ),
                ) 
              ),
              SizedBox(height: 25),
              Text(
                '@ Hospedaje Formula 1',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff9A9A9A),
                ),
              ),
            ],
          ) 
        ),
      ),
    );
  }
}