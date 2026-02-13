import 'package:flutter/material.dart';

/**
 * classe extends :
 *    type de fonctionnement des widgets
 *    Widgets:
 *      Statique:contenu est le meme=> Text("0")
 *      Dynamique: Modification (Contenu, 1 attributs)
 *      Text(i):
 *        variable
 *        =>Etat d'un Widget STATE
 *  widget Sans etat ( 1 Etat): => StateLessWidget => stl
 *  widget Avec etat ( 2..N Etat): => StateFulWidget => stf 
 */
class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Compteur> {
  int cpt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            InkWell(
              onTap: () {
                setState(() {
                   print("click on Like");
                cpt++;
                print("cpt=$cpt");
                });
               
              },
              child: Icon(Icons.thumb_up, color: Colors.blue, size: 60),
            ),
            Text(
              cpt.toString(),
              style: TextStyle(color: Colors.red, fontSize: 28),
            ),
            InkWell(
              onTap: () {
                setState(() {
                   print("click on UNLike");
                cpt--;
                print("cpt=$cpt");
                });
                
              },
              child: Icon(Icons.thumb_down, color: Colors.red, size: 60),
            ),
          ],
        ),
      ),
    );
  }
}
