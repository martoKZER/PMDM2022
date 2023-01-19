import 'package:flutter/material.dart';
import 'package:flutter_04_componentes/pages/alert_page.dart';
import 'package:flutter_04_componentes/pages/card_page.dart';
import 'package:flutter_04_componentes/pages/home_page.dart';
import 'package:flutter_04_componentes/pages/listview1_page.dart';

import 'pages/listview2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: list_view_2_page(),
      routes: {
        'home':(context) => Home_Page(),
        'lista1':(context) => list_view_1_page(),
        'lista2':(context) => list_view_2_page(),
        'alert':(context) => Alert_Page(),
        'card':(context) => Card_Page()  
      },
    );
  }
}