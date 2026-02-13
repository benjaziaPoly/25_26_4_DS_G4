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
            InkWell(
              onTap: () {
                print("click on Like");
              },
              child: Icon(Icons.thumb_up, color: Colors.blue, size: 60),
            ),
            Text("0", style: TextStyle(color: Colors.red, fontSize: 28)),
            InkWell(
              onTap: () {
                print("click on unLike");
              },
              child: Icon(Icons.thumb_down, color: Colors.red, size: 60),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}
