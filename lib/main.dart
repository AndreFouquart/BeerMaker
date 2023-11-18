import 'package:flutter/material.dart';
import 'etape.dart';
import 'outils.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beer Maker',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 255, 193, 7)
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/route': (context) => const SplashScreen(),
        '/etapes': (BuildContext context) => const Etapes(),
        '/outils': (BuildContext context) => const Outils(),

      },
      initialRoute: '/route',
    );
  }
}