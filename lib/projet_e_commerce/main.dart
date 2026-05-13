import 'package:flutter/material.dart';
import 'package:projet/firebase_options.dart';
import 'package:projet/projet_e_commerce/pages/barre_navigation.dart';
import 'package:projet/projet_e_commerce/pages/favori.dart';
import 'package:projet/projet_e_commerce/pages/home_page.dart';
import 'package:projet/projet_e_commerce/pages/meteo_screen.dart';
import 'package:projet/projet_e_commerce/pages/page_user.dart';
import 'package:projet/projet_e_commerce/pages/panier.dart';
import 'package:projet/projet_e_commerce/pages/produit_detail.dart';
import 'package:projet/projet_e_commerce/pages/produit_list.dart';
import 'package:projet/projet_e_commerce/provider/cart_provider.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';

/**
 * Corriger le Travail demandé
 * MAitriser le systeme de Rouatage avec passage des Arguments, avec Flutter
 * présentation notion StateManager
 */
void main() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase initialisé avec succès");
  } catch (e) {
    print("Erreur lors de l'initialisation de Firebase: $e");
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PanierProvider()),
      ],
      child: EcommerceApp(),
    ),
  );
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Défintion de Toutes les routes de l'app
      routes: {
        "home": (context) => HomePage(),
        "listProduit": (context) => ListProduitPage(),
        "detailProduit": (context) => ProduitDetailPage(),
        "panier": (context) => PanierPage(),
        "favroite": (context) => FavoritePage(),
        "profile": (context) => UserPage(),
        "barreNavigation": (context) => BarreNavigationScreen(),
        "meteo": (context) => MeteoScreen(),
      },
      initialRoute: "barreNavigation",
      //home: BarreNavigationScreen(),
      // HomePage()
    );
  }
}
//opéartion INPUT/OUTPUT
// recupération des data:
// web : API / SGBD / images
// Image locale Assets / Network / Ficheir /localstorage: FICHIER
//==> Asynchrone

// Future<bool> getData() async {
//   --
//   -- await ......
//   -- await ....
// }
//  https://console.firebase.google.com/
/*
 MYSQL , PostgresSql,SQLSERVER, MongoDB 
 Login(@ip,@Port,@DBname,@Username,Password)=> Authntification user CRUD
 Firebase: Authntification de l'APPLICATION
        Android, ios, web, windows,.... 
 //cmd> c:\.......bin\flutterfire configure --project=projet-ds-g1
 */
