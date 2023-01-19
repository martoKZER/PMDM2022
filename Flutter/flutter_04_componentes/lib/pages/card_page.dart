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
          backgroundColor: Colors.indigo,
          title: const Text('Card 1 Page'),
          elevation: 0,
        ),
        body: Center(
          child: Text('Card Page')));
  }
}