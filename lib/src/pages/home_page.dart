import 'package:flutter/material.dart';
import 'package:flutter_app/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes'),),
      body: _lista(),
    );
  }

  Widget _lista() {
  
  menuProvider.cargarData().then( (opciones) {

    print('_lista');
    print(opciones);


  });
  return ListView( children: _listaItems() , ); 

  }

  List<Widget> _listaItems() {

    return [
      ListTile( title: Text('Hola mundo'), ),
      Divider(),
      ListTile( title: Text('Hola mundo'), ),
      Divider(),
      ListTile( title: Text('Hola mundo'), ),
    ];


  }

}