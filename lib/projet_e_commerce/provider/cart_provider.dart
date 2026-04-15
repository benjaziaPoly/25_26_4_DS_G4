import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/model/class_produit_panier.dart';

class PanierProvider with ChangeNotifier {
  //_panier est attribut Private
  List<ProduitPanier> _panier = [];
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
}
