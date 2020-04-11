import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorto()
        ),
  
    );
  }

List<Widget> _crearItems(){

  List<Widget> lista = new List<Widget>();

  for (String opt in opciones) {
    final tempWidget = ListTile(
      title: Text(opt),
    );
  
  lista..add(tempWidget)
       ..add( Divider() );
  }
  return lista;
}

List<Widget> _crearItemsCorto(){

  return opciones.map( (opt){

    return Column(
      children: <Widget>[
        ListTile(
          title: Text(opt + '!'),
          subtitle: Text('Subtitulito'),
          leading: Icon( Icons.ac_unit ),
          trailing: Icon( Icons.accessibility_new ),
          onTap: (){},
        ),
        Divider(),
      ],
    );

  }).toList();

}

}