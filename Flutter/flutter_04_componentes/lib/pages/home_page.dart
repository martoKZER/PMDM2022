import 'package:flutter/material.dart';
import 'package:flutter_04_componentes/pages/listview1_page.dart';

class Home_Page extends StatelessWidget {
  Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Home Page'),
          elevation: 0,
        ),
        body: ListView.separated(
         itemBuilder: ((context, index) => ListTile(
          title: Text('Hola DAM'),
          onTap: () {
            // Vamos a navegar a otra página
            final ruta = MaterialPageRoute(builder: (context) => list_view_1_page());
            Navigator.push(context, ruta);
          },
          )),
         separatorBuilder: (_,__) => const Divider(),
         itemCount: 10));
  }
}