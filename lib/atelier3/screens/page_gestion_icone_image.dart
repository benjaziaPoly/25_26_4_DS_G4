import 'package:flutter/material.dart';

class GestionIconeImage extends StatefulWidget {
  const GestionIconeImage({super.key});

  @override
  State<GestionIconeImage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GestionIconeImage> {
  List<IconData> mesIcones = [
    Icons.ac_unit_rounded,
    Icons.accessible,
    Icons.add_a_photo,
    Icons.add_card_sharp,
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: Text(
          "ATL-3 :Exercice 03",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    border: Border.all(color: Colors.red, width: 4),
                  ),
                  child: Icon(mesIcones[index], size: 60, color: Colors.blue),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (index < mesIcones.length - 1)
                        index++;
                      else
                        index = 0;
                    });
                  },
                  child: Text("Changer Icone"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit, size: 60, color: Colors.blue),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Changer Icone"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit, size: 60, color: Colors.blue),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Changer Icone"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
