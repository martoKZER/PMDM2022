import 'package:flutter/material.dart';

class Alert_Page extends StatelessWidget {
  Alert_Page({super.key});
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
          title: const Text('Alert Page'),
          elevation: 0,
        ),
        body: const Center(
          child: Text('Alert Page')));
  }
}