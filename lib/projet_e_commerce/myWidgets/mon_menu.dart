import 'package:flutter/material.dart';

class WidgetMonMenu extends StatefulWidget {
  const WidgetMonMenu({super.key});

  @override
  State<WidgetMonMenu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WidgetMonMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
