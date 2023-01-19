import 'package:flutter/material.dart';
import 'package:flutter_04_componentes/pages/listview1_page.dart';

class Home_Page extends StatelessWidget {
  Home_Page({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Flutter componentes'),
          elevation: 0,
        ),
        body: ListView(children: [
          ListTile(
            title : Text('Listas de tipo 1'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.pushNamed(context, 'lista1'),
          ),
          const Divider(),
        ],
        )
        );
  }
}
