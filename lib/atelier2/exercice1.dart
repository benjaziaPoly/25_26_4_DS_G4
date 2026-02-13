import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 01", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mybutton(
              traitement: () {
                print("Saving in progress....");
              },
              texte: "Save",
              l: 170,
              h: 50,
            ),
            mybutton(
              traitement: () {
                print("Cancled....");
              },
              texte: "Cancel",
              l: 170,
              h: 50,
              couleur: Colors.red,
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}

Widget mybutton({
  required void Function()? traitement,
  required String texte,
  required double l,
  required double h,
  Color couleur = Colors.green,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: SizedBox(
      height: h,
      width: l,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: couleur,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: traitement,
        child: Text(texte),
      ),
    ),
  );
}
