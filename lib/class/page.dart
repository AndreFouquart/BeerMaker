import 'package:flutter/material.dart';

class PremierePage extends StatelessWidget {
  const PremierePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '0. Phase de préparatoire',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 8),
          Text('- Une dame-jeanne\n'
              '- Un barboteur\n'
              '- Un thermomètre\n'
              '- Un tuyau d’extraction avec un embout anti-lie\n'
              '- Plusieurs casseroles\n- Une cuillère percée\n'
              '- Une passoire à mailles fines\n'
              '- Des bouteilles en verre à clapet'),
          SizedBox(height: 16),
          Text(
            'Consignes :',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Le matériel utile à la fabrication doit être propre et stérilisé. '
                'Nous vous conseillons d’utiliser un désinfectant en poudre vendu dans le commerce '
                'et de vous fier aux instructions (à diluer dans de l’eau dans laquelle '
                'il faut faire tremper le matériel quelques minutes).',
          ),
          Image(image: AssetImage("assets/images/page0/step00.png")),
        ],
      ),
    );
  }
}

class DeuxiemePage extends StatelessWidget {
  const DeuxiemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '1- L\'empâtage',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Text(
              'Note: \n'
                  'Le malt blond peut s\'utiliser seul. Les malts plus foncés ne s’utilisent qu’en petite dose pour moduler le goût de la bière. '
                  'Si vous avez acheté du malt en grain entier, le concassez avec un moulin à céréales, un mixeur ou encore un rouleau à pâtisserie. '
          ),
          Image(image: AssetImage("assets/images/page1/step10.png")),
          Text(
            'Définissez la quantité d’eau de brassage nécessaire, puis versez-la dans une grande casserole. Porter cette eau à une température de 50 °C en vérifiant avec le thermomètre, puis ajoutez le malt concassé.',
          ),
          Image(image: AssetImage("assets/images/page1/step11.png")),
        ],
      ),
    );
  }
}

class TroisiemePage extends StatelessWidget {
  const TroisiemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                '2- Le brassage par paliers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(height: 8),
          Text(
              'Brasser la mixture malt + eau, appelée maîshe, pendant 30 min, à 40°C environ. '
                  'Remuer avec une grande cuillère percée durant la chauffe et laisser reposer une fois la température du palier atteinte. '
          ),
          Center(
            child: Image(image: AssetImage("assets/images/page2/step20.png"),width: 240,),
          ),
          Text('Monter en température la maîshe à 60-65°C et maintenir cette température environ 30 min. '
              'Augmenter la température à 68-70°C et maintenir cette température environ 30 min. '
              'Augmenter la température à 78°C et maintenir cette température environ 30 min.',
          ),
          Image(image: AssetImage("assets/images/page2/step21.png")),
        ],
      ),
    );
  }
}

class QuatriemePage extends StatelessWidget {
  const QuatriemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                '3- Filtrer la maîshe',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(height: 8),
          Text(
              'Au dessus d’une seconde casserole, verser la maîshe dans une grande passoire (tapisser si besoin d’un linge propre) pour obtenir la drêche (résidu solide du malt). '
          ),
          Image(image: AssetImage("assets/images/page3/step30.png")),
          Text('Pour récupérer les sucres restants dans la drêche égouttée, verser au-dessus de la drêche l’eau de rinçage préalablement montée à 80°C. '
              'L’eau de brassage associé à l’eau de rinçage s’appelle le moût. Les résidus de malt sont compostables.',
          ),
          Image(image: AssetImage("assets/images/page3/step31.png")),
        ],
      ),
    );
  }
}

class CinquiemePage extends StatelessWidget {
  const CinquiemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                '4- Le houblonnage',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(height: 8),
          Text(
              'Calculer la quantité de houblon à ajouter. Différentes recettes existent, les houblons peuvent être complétés par des épices. '
                  'Faites bouillir le moût. Dès que l\'ébullition commence, écumez et ajoutez le houblon amer. '
                  'Laissez bouillir ce mélange sans couvrir pendant 1h30 pour retirer de l’amertume. '
          ),
          Image(image: AssetImage("assets/images/page4/step40.png")),
          Text('10-15 minutes avant la fin de cette ébullition, ajoutez le houblon aromatique. Retirez le houblon en le filtrant. '
              'Évitez cette étape en plaçant le houblon dans un filtre à thé en papier. '
              'Le choix du houblon doit être fait en fonction de son taux IBU qui est l’unité d’amertume.',
          ),
        ],
      ),
    );
  }
}

class SixiemePage extends StatelessWidget {
  const SixiemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                '5- La fermentation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(height: 8),
          Text(
              'Le moût doit être refroidi à une température de 20-25°C pour y incorporer les levures puis transvasé dans la dame-jeanne. '
          ),
          Image(image: AssetImage("assets/images/page5/step50.png")),
          Text(
              'Il existe différentes levures. Nous vous recommandons d’utiliser des levures sèches qui sont mieux adaptées pour des petits brassins. '
                  'Se référer à l’emballage pour déterminer au mieux la quantité appropriée. Il est recommandé d’utiliser pour débuter de la levure S33 qui est polyvalente. '
          ),
          Image(image: AssetImage("assets/images/page5/step51.png")),
          Text('Incorporer la levure et remuer la bonbonne pour mélanger. Dans une pièce à 20°C, fermer la bonbonne et placer le barboter (qui permet d’évacuer l’oxygène). '
          ),
          Image(image: AssetImage("assets/images/page5/step52.png")),
          Text(
              'Durant environ une semaine, les levures vont travailler et générer du CO2 dans la bonbonne, qui va s’évacuer par le barboteur. '
                  'Remuer de temps en temps la bonbonne pour faire évacuer le CO2. Lorsqu’il n’y a plus d’activité dans le barboteur, mettre la bouteille de fermentation dans une pièce plus fraîche (autour de 10-15°C, comme une cave par exemple). '
                  'La bière peut ainsi maturer pendant 1 à 3 semaines, cette période de fermentation secondaire se nomme la garde. '
          ),
          Image(image: AssetImage("assets/images/page5/step53.png")),
          Text(
            'Ajouter selon recette des épices, fruits, ...',
          ),
        ],
      ),
    );
  }
}

class SeptiemePage extends StatelessWidget {
  const SeptiemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                '6- Le sucrage',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(height: 8),
          Text(
            'Pour relancer la fermentation qui se fera en bouteille et qui permet d’obtenir de la mousse, incorporer 4 à 6 g de sucre par litre de bière.',
          ),
          Image(image: AssetImage("assets/images/page6/step60.png")),
        ],
      ),
    );
  }
}

class HuitiemePage extends StatelessWidget {
  const HuitiemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                '7- La mise en bouteille',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(height: 8),
          Text(
              'Mettre en bouteille (stérilisées et séchées) en utilisant un tuyau d\'extraction avec embout anti-lie. '
          ),
          Image(image: AssetImage("assets/images/page7/step70.png")),
          Text(
              'Le but est de récupérer le liquide clair et d’éliminer les précipités et dépôts. Placer l’embout anti-lie sur le fond de la bonbonne et l’autre bout au fond de la bouteille. La bonbonne doit être placée très en hauteur par rapport à la bouteille. '
                  'Utiliser des bouteilles en verre teinté propres et sèches, qui ferment avec un bouchon à vis ou à clapet. Les bouteilles doivent être conservées verticalement. '
                  'Pendant une semaine conserver ces bouteilles à 20°C. Puis pendant 4 à 8 semaines, les garder au frais, entre 6 et 10°C. '
          ),
          Image(image: AssetImage("assets/images/page7/step71.png")),
          Text(
            'La bière se conserve 1 an, idéalement entre 10 et 15°C à l’abri de la lumière ou simplement au réfrigérateur.',
          ),
        ],
      ),
    );
  }
}

class DernierePage extends StatelessWidget {
  const DernierePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                '8- Bonne dégustation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(height: 8),
          Image(image: AssetImage("assets/images/page8/step80.png"))
        ],
      ),
    );
  }
}
