import 'package:flutter/material.dart';

class list_view_1_page extends StatelessWidget {
  list_view_1_page({super.key});

  final opciones = [
    'Batman',
    'Superman',
    'Super agente Loras',
    'Spiderman',
    'La Xavineta'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tipo Lista 1 Page'),
          elevation: 0,
        ),
        body: ListView(
          children: [
            ...opciones
                .map((superhero) => ListTile(
                      leading: const Icon(Icons.access_time_sharp),
                      title: Text(superhero),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
            const Divider(
              height: 10,
            )
          ],
        ));
  }
}