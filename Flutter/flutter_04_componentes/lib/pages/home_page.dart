import 'package:flutter/material.dart';
import 'package:flutter_04_componentes/pages/listview1_page.dart';

class Home_Page extends StatelessWidget {
  Home_Page({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title: const Text('Flutter componentes'),
         
        ),
        body: ListView(children: [
          ListTile(
            title : Text('Listas de tipo 1'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.pushNamed(context, 'lista1'),
          ),
          const Divider(),
          ListTile(
            title : Text('Listas de tipo 2'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.pushNamed(context, 'lista2'),
          ),
          const Divider(),
          ListTile(
            title : Text('Alerts - Alertas'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.pushNamed(context, 'alert'),
          ),
          const Divider(),
          ListTile(
            title : Text('Cards - Tarjetas'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.pushNamed(context, 'card'),
          ),
          const Divider(),
        ],
        )
        );
  }
}
