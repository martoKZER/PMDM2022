import 'package:flutter/material.dart';

class Card_Page extends StatelessWidget {
  Card_Page({super.key});
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
        title: const Text('Cards - Tarjetas'),
        elevation: 0,
      ),  
      body: ListView(
        padding : const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children : const [
          Card(
            child: ListTile(
              leading: Icon(Icons.photo_album_outlined),
              title: Text('Soy un titulo'),
              subtitle: Text(''),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('OK'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Con esta me cancela')
                ),

              ],
              )
          )
        ],
      )
    );
  }
}

class TarjetaPersonalizada1 extends StatelessWidget{
  const TarjetaPersonalizada1({
    Key? key,
  }):super(key: key);
}