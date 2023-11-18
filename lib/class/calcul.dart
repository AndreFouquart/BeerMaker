import 'dart:math';

class Calcul{

  double getQteMalt(volumeProd, volumeRech){
    return (volumeProd * volumeRech)/20;
  }
  double getQteEauBrassage(volumeProd, volumeRech){
    return getQteMalt(volumeProd, volumeRech)*2.8;
  }
  double getQteEauRincage(volumeProd, volumeRech){
    return (volumeProd * 1.25)-(getQteEauBrassage(volumeProd, volumeRech)*0.7);
  }
  double getQteHoublonAmerisant(volumeProd){
    return volumeProd * 3;
  }
  double getQteHoublonAromatique(volumeProd){
    return volumeProd * 1;
  }
  double getQteLevure(volumeProd){
    return volumeProd / 2;
  }
  double getMcu(volumeProd,volumeRech, moyenneEbc){
    return 4.23 * (moyenneEbc * getQteMalt(volumeProd, volumeRech) / volumeProd);
  }
  double getEbc(moyenneEbc, volumeProd, volumeRech){
    return 2.9396 * pow(getMcu(volumeProd, volumeRech, moyenneEbc), 0.6859);
  }
  double getSrm(moyenneEbc, volumeProd, volumeRech){
    return 0.508 * getEbc(moyenneEbc, volumeProd, volumeRech);
  }

}