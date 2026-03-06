import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';
import 'package:projet/projet_e_commerce/myWidgets/image_caroussel.dart';
import 'package:projet/projet_e_commerce/myWidgets/image_categorie.dart';
import 'package:projet/projet_e_commerce/myWidgets/mon_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:WidgetMonMenu(),
      appBar: AppBar(
        title: Text("Page d'accueil"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Carrousel
          ImageCarrousel(),
          Text("Categories"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(listeImageCategories.length, (index) {
                return ImageCategorie(
                  titre: titreListeImageCategories[index],
                  urlImage: listeImageCategories[index],
                );
              }),
            ),
          ),
          Text("Marques"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(listeImageCategories.length, (index) {
                return ImageCategorie(
                  titre: titreListeImageCategories[index],
                  urlImage: listeImageCategories[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
