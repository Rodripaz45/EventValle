// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ocultar la etiqueta de depuració
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 250, 250, 250), // Color de fondo
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/f/fb/Univalle_bol_cbb_logo.png',
                  width: 170,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.mail, color: Colors.grey.shade800),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Correo Electrónico',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.lock, color: Colors.grey.shade800),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: GestureDetector(
                  onTap: () {
                    print("Olvidaste tu contraseña?");
                  },
                  child: Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print("Iniciar Sesión");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(182, 142, 8, 35),
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: Size(300, 0),
                    elevation: 0, // Sin sombra
                  ),
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Center(
                child: GestureDetector(
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    print("Login with Microsoft");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: Size(300, 0),
                    elevation: 0, // Sin sombra
                  ),
                  icon: FaIcon(FontAwesomeIcons.microsoft),
                  label: Text(
                    '  Login with Microsoft',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
                  },
                  child: Text(
                    'No tienes una cuenta? Crear Cuenta',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 16.0,
                    ),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
