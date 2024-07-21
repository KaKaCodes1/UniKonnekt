import 'package:flutter/material.dart';
import 'package:unikonnect/screens/home_screen.dart';
import 'package:unikonnect/screens/register_screen.dart';
import 'package:unikonnect/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniKonnect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const Splashscreen(),
      // home: const Register(),
      // home: const HomeScreen(),
    );
  }
}


