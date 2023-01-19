import 'package:flutter/material.dart';

class list_view_2_page extends StatelessWidget {
  list_view_2_page({super.key});
  final opciones = [
    'Batman',
    'Superman',
    'Xavi Hernandez',
    'Luis Padrique',       
    'Messi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Tipo Lista 1 Page'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemCount: opciones.length,
          itemBuilder: ((context, i) {
            return ListTile(
              leading: const Icon(Icons.child_care, color: Colors.indigo,),
              title: Text(opciones[i]),
              subtitle: Text(opciones[i]),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo,),
              onTap: () {
                final superheroe = opciones[i];
                print(superheroe);
              },
            );
          }), 
          separatorBuilder: ((_, __) => const Divider()), 
          )
      );
  }
}