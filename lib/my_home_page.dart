import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/beerMakerLogo.png'),
        title: const Text("BeerMaker"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'Bienvenue dans BeerMaker !',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 193, 7),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/etapes');
                },
                child: const Text(
                    'Etapes de fabrication'
                ) ),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 193, 7),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/outils');
                },
                child: const Text(
                    'Outil de fabrication'
                ) ),
          ],
        ),
      ),
    );
  }
}