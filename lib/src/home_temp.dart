// ignore_for_file: prefer_collection_literals

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno', 'Dos', 'Tres'];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporales'),
      ),
      body: ListView(
        children: _crearItems()
      ),
    );
    
  }

  List<Widget> _crearItems() {

    List<Widget> lista = [];

for (String opt in opciones) {

  final tempWidget = ListTile(
    title: Text(opt),
    );

    lista..add(tempWidget)
    ..add(Divider());
}
    return lista;
  }

  // List<Widget> _crearItemsCorta() {

  // }
}
