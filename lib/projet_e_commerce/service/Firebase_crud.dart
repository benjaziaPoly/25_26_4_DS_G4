import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projet/projet_e_commerce/model/class_produit.dart';

class FirebaseCrud {
  Future<void> saveData(List<Produit> listeProd) async {
    // à partir du fichier list.. => Firebase
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    WriteBatch batch = firestore.batch();
    try {
      //commit, rollback , transaction
      for (var prod in listeProd) {
        DocumentReference docRef = firestore.collection('produits').doc();
        batch.set(docRef, prod.toMap());
      }
      await batch.commit();
      print("Produits enregistrés dans la collection:${listeProd.length}");
    } catch (e) {
      print("Erreur Détectée:$e");
    }
  }

  Future<List<Produit>> readData() async {
    List<Produit> res = [];
    final CollectionReference collectionProduits = FirebaseFirestore.instance
        .collection('produits');
    try {
      QuerySnapshot snapshot = await collectionProduits.get();
      for (var prod in snapshot.docs) {
        res.add(
          Produit.fromMap({
            "id": prod['id'] ?? '',
            "title": prod['title'] ?? '',
            "description": prod['description'] ?? '',
            "price": prod['price']?.toDouble() ?? 0.0,
            "imageUrl": prod['imageUrl'] ?? '',
            "brand": prod['brand'] ?? '',
            "produitCategoryName": prod['produitCategoryName'] ?? '',
            "quantity": prod['quantity']?.toInt() ?? 0,
          }),
        );
      }
    } catch (e) {
      print("erreur detectée:$e");
    }
    return res;
  }
}
