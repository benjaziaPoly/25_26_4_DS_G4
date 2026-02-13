import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Premiere Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Bonjour", style: TextStyle(color: Colors.pink, fontSize: 30)),
            Text("DS G3", style: TextStyle(color: Colors.pink, fontSize: 30)),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}
