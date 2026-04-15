import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/data/list_produits.dart';
import 'package:projet/projet_e_commerce/myWidgets/un_produit.dart';
import 'package:projet/projet_e_commerce/pages/produit_detail.dart';

class ListProduitPage extends StatefulWidget {
  const ListProduitPage({super.key});

  @override
  State<ListProduitPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListProduitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page liste des  produits"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.4,
        children: List.generate(AllProductData.Produits.length, (index) {
          return InkWell(
            onTap: () {
              /*
                A. le passage ( Index, produit) => Constructeur de la classe DetailProduit
                B. le passage ( Index, produit) => Comme Parametres lors de la naviagtion
                Navigator : Arguments ( index, produit)
              */
              Navigator.pushNamed(
                context,
                "detailProduit",
                arguments:index
              );
              //=> creer , nommer les routes

              //ProduitDetailPage(produit: AllProductData.Produits[index]);
              //Navigation
            },
           // child: WidgetProduit(produit: AllProductData.Produits[index]),
          );
        }),
      ),
    );
  }
}
