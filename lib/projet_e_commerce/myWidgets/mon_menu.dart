import 'package:flutter/material.dart';

class WidgetMonMenu extends StatefulWidget {
  const WidgetMonMenu({super.key});

  @override
  State<WidgetMonMenu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WidgetMonMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ben Jazia"),
            accountEmail: Text("mail@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT11ii7P372sU9BZPZgOR6ohoQbBJWbkJ0OVA&s",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Acceil"),
            onTap: () {
              Navigator.pushNamed(context, "home");
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Liste Produit"),
            onTap: () {
              Navigator.pushNamed(context, "listProduit");
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Mon Panier"),
            onTap: () {
              Navigator.pushNamed(context, "panier");
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favoris"),
            onTap: () {
              Navigator.pushNamed(context, "favroite");
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            onTap: () {
              Navigator.pushNamed(context, "profile");
            },
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
