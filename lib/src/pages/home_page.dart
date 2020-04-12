import 'package:flutter/material.dart';

import 'package:flutter_app/src/providers/menu_provider.dart';

import 'package:flutter_app/src/utils/iconos_string_util.dart';

import 'package:flutter_app/src/pages/alert_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        backgroundColor: Colors.purpleAccent,
        ),
      body: _lista(),
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder:( context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          children: _listaItems( snapshot.data, context ),
        );

      }  ,
    );
  }

  List<Widget> _listaItems( List<dynamic> data, context  ) {
    

    final List<Widget> opciones = [];
    data.forEach( (opt){

      final widgetTemp = ListTile(

        title: Text(opt['texto']),
        leading: (
          getIcon( opt['icon'] )),
        trailing: Icon(Icons.keyboard_hide),
        onTap: (){
          
          Navigator.pushNamed(context, opt['ruta']);

        },
      );

    opciones..add( widgetTemp )
            ..add(Divider());

    });

  return opciones;
  }

}