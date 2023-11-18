import 'package:flutter/material.dart';

import 'class/page.dart';

class Etapes extends StatefulWidget {
  const Etapes({super.key});

  @override
  State<Etapes> createState() => _EtapesState();
}

class _EtapesState extends State<Etapes> {
  int _indexActuel = 0;

  final List<Widget> _pages = [
    const PremierePage(),
    const DeuxiemePage(),
    const TroisiemePage(),
    const QuatriemePage(),
    const CinquiemePage(),
    const SixiemePage(),
    const SeptiemePage(),
    const HuitiemePage(),
    const DernierePage()

  ];

  void _changePage(int delta) {
    int newIndex = _indexActuel + delta;
    if (newIndex >= 0 && newIndex < _pages.length) {
      setState(() {
        _indexActuel = newIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapes de fabrication'),
      ),
      body: SingleChildScrollView(
          child: _pages[_indexActuel]
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 255, 193, 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.asset("assets/images/previous.png",
                width: 25,),
              onPressed: () => _changePage(-1),
            ),
            IconButton(
              icon: Image.asset("assets/images/next.png",
                  width: 25),
              onPressed: () => _changePage(1),
            ),
          ],
        ),
      ),
    );
  }
}


