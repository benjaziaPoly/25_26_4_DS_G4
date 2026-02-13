import 'package:flutter/material.dart';
import 'package:projet/atelier3/screens/page_compteur.dart';
import 'package:projet/atelier3/screens/page_gestion_couleur.dart';
import 'package:projet/atelier3/screens/page_gestion_icone_image.dart';

void main() {
  var myApp = MaterialApp(
    home: GestionIconeImage(),
    //GestionCouleur(),
    //Compteur()
  );
  runApp(myApp);
}
