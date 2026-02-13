import 'package:flutter/material.dart';

class GestionCouleur extends StatefulWidget {
  const GestionCouleur({super.key});

  @override
  State<GestionCouleur> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GestionCouleur> {
  Color couleur = Colors.green;
  void changerCouleur() {
    
      if (couleur == Colors.green)
        couleur = Colors.white;
      else
        couleur = Colors.green;
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text(
          "ATL-3 :Exercice 02",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                   changerCouleur();
                });
               
              },
              child: Text("Changer Background"),
            ),
          ],
        ),
      ),
    );
  }
}
