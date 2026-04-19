import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/model/class_produit_panier.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PanierProvider with ChangeNotifier {
  //_panier est attribut Private
  List<ProduitPanier> _panier = [];

  PanierProvider() {
    getCart();
  }
  // Getter
  List<ProduitPanier> get Panier {
    return _panier;
  }

  // on autilise 2 focntiosn predefinies
  // .firstwhere => recheerche
  //  .add => ajouter un element a la liste
  void ajouterProduit(ProduitPanier nouveauProduit) {
    ProduitPanier? produitTrouve = _panier.firstWhere(
      (art) {
        if (art.id == nouveauProduit.id) {
          art.quantite += 1;
          return true;
        }
        return false;
      },
      orElse: () {
        print("Ajout new produit : " + nouveauProduit.title);
        nouveauProduit.quantite = 1;
        _panier.add(nouveauProduit);
        return nouveauProduit;
      },
    );
    notifyListeners();
  }

  //sauvegarder le contenu du panier => localStorage
  Future<void> saveCart() async {
    final SharedPreferences data = await SharedPreferences.getInstance();
    //save de la varaible _panier List<ProduitPanier> ==> String
    // JSON=> Chaine FORMATTE :, [, }
    // [
    //  "resulat":"ok",
    // { id: "1", title: "PC", price: 1000.0, imageUrl: "http://....", quantite: 2 },
    // { id: "1", title: "PC", price: 1000.0, imageUrl: "http://....", quantite: 2 }
    // ]
    //_panier=>Json=>String
    // on a creer une Liste de String : convertit Chaque PRodiutPAnieor vers une Chaine JSON (String)
    List<String> tmp = _panier.map((element) => element.toJson()).toList();
    //converssion de la liste de striong vers format Json => string
    String tmpJson = json.encode(tmp);
    data.setString("savedCart", tmpJson);
    print("nombre prdiot SAVED TO  Localstorage=${_panier.length}");
  }

  //recupérer localStorage = panier
  Future<void> getCart() async {
    final SharedPreferences data = await SharedPreferences.getInstance();
    String? tmp = data.getString("savedCart");
    if (tmp != null) {
      final List<dynamic> x = json.decode(tmp);
      _panier = x.map((element) => ProduitPanier.fromJson(element)).toList();
      print("nombre prdiot from Localstorage=${_panier.length}");
      notifyListeners();
    }
  }
}
