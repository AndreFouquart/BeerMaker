import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my_home_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    //Permet de enlever la barre de notification et la barre en bas sur les téléphone android
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const MyHomePage(),
      ));
    });
  }

  @override
  void dispose() {
    //Permet d'afficher les overlay une fois le splashscreen quitté SystemUiOverlay.values(top) pour le haut et SystemUiOverlay.values(bottom) pour le bas
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgor.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image(
                  image: AssetImage('assets/images/beerMakerLogo.png'),
                  width: 200,
                )
            )
          ],
        ),
      ),
    );
  }
}
