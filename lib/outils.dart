import 'package:flutter/material.dart';
import 'class/calcul.dart';

class Outils extends StatefulWidget {
  const Outils({super.key});

  @override
  State<Outils> createState() => _OutilsState();
}

class _OutilsState extends State<Outils> {

  String _srmToRGB() {
    // Returns an RGB value based on SRM
    double srm = Calcul().getSrm(moyenneEbc, volumeProd, volumeRech);
    double r = 0;
    double g = 0;
    double b = 0;
    if (srm >= 0 && srm <= 1) {
      r = 240;
      g = 239;
      b = 181;
    } else if (srm > 1 && srm <= 2) {
      r = 233;
      g = 215;
      b = 108;
    } else if (srm > 2) {
// Set red decimal
      if (srm < 70.6843) {
        r = 243.8327 - (6.4040 * srm) + (0.0453 * srm * srm);
      } else {
        r = 17.5014;
      }
// Set green decimal
      if (srm < 35.0674) {
        g = 230.929 - 12.484 * srm + 0.178 * srm * srm;
      } else {
        g = 12.0382;
      }
// Set blue decimal
      if (srm < 4) {
        b = -54 * srm + 216;
      } else if (srm >= 4 && srm < 7) {
        b = 0;
      } else if (srm >= 7 && srm < 9) {
        b = 13 * srm - 91;
      } else if (srm >= 9 && srm < 13) {
        b = 2 * srm + 8;
      } else if (srm >= 13 && srm < 17) {
        b = -1.5 * srm + 53.5;
      } else if (srm >= 17 && srm < 22) {
        b = 0.6 * srm + 17.8;
      } else if (srm >= 22 && srm < 27) {
        b = -2.2 * srm + 79.4;
      } else if (srm >= 27 && srm < 34) {
        b = -0.4285 * srm + 31.5714;
      } else {
        b = 17;
      }
    }
    int red = r.toInt();
    int green = g.toInt();
    int blue = b.toInt();
    String rr = red.toRadixString(16);
//red.toHexString(red);
    String gg = green.toRadixString(16);
    String bb = blue.toRadixString(16);
    String rgb = "0xFF";
    if (rr.length < 2) {
      rr = "0$rr";
    } else if (gg.length < 2) {
      gg = "0$gg";
    } else if (bb.length < 2) {
      bb = "0$bb";
    }
    rgb = rgb + rr + gg + bb;
    return rgb;
  }


  TextEditingController vp = TextEditingController();
  TextEditingController vr = TextEditingController();
  TextEditingController mebcg = TextEditingController();
  String volProd = "";
  String volRech = "";
  String moyEbc = "";
  double volumeProd = 0;
  double volumeRech = 0;
  double moyenneEbc = 0;
  bool brassage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Outils de fabrication'
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              "Fabriquez votre biere",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 9)),
            SizedBox(
              width: 300,
              child: TextField(
                controller: vp,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Volume de la production (en L)',
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: vr,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Volume d'alcool recherché (en %)",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: mebcg,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Volume EBC des grains",
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 193, 7),
                elevation: 10,
                fixedSize: const Size(300, 10),
              ),
              onPressed: () {
                volProd = vp.text;
                volumeProd = double.parse(volProd);
                volRech = vr.text;
                volumeRech = double.parse(volRech);
                moyEbc = mebcg.text;
                moyenneEbc = double.parse(moyEbc);
                print("C'est bon");
                setState(() {
                  brassage = true;
                });
              },
              child: const Text("Brasser !"),
            ),
            Row(
              children: [
                Visibility(
                  visible: brassage,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Résultat',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text('Quantité de Malt : ${Calcul().getQteMalt(volumeProd, volumeRech)} Kg'),
                      Text('volume eau de brassage : ${Calcul().getQteEauBrassage(volumeProd, volumeRech)} L'),
                      Text('volume eau de rinçage : ${Calcul().getQteEauRincage(volumeProd, volumeRech)} L'),
                      Text('Quantité de houblon amérisant : ${Calcul().getQteHoublonAmerisant(volumeProd)} g'),
                      Text('Quantité de houblon aromatique : ${Calcul().getQteHoublonAromatique(volumeProd)} g'),
                      Text('Quantité de levure : ${Calcul().getQteLevure(volumeProd)} g'),
                      const Text(
                        'Colorimétrie',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text('MCU = ${Calcul().getMcu(volumeProd, volumeRech, moyenneEbc).toStringAsFixed(2)}'),
                      Text('EBC = ${Calcul().getEbc(moyenneEbc, volumeProd, volumeRech).toStringAsFixed(2)}'),
                      Text('SRM = ${Calcul().getSrm(moyenneEbc, volumeProd, volumeRech).toStringAsFixed(2)}'),
                      Row(
                        children: [
                          Container(
                            color: Color(int.parse(_srmToRGB())),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _srmToRGB(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
