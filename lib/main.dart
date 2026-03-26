import 'package:flutter/material.dart';
import 'package:myapp/Mis%20pantallas/entrar.dart';
import 'package:myapp/Mis%20pantallas/login.dart';
import 'package:myapp/Mis%20pantallas/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const Entrar(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
      },
    );
  }
}