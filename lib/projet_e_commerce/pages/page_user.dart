import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page User Info"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
