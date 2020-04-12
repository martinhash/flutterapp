import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Card'), ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );
  }
}

Widget _cardTipo1() {

  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue,),
          title: Text('Soy el Titulo'),
          subtitle: Text('The latest tools that help you and your team build software better, together.The latest tools that help you and your team build software better, together.'),
          
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){},
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){},
            )
          ],
        )
      ],
    ),
  );

}

