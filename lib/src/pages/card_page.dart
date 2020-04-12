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
          SizedBox(height: 30.0,),
          _cardTipo2()
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

Widget _cardTipo2(){
  return Card(

    child: Column(children: <Widget>[
      
      FadeInImage(
        image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
        placeholder: AssetImage('assets/original.gif'),
        fadeInDuration: Duration (milliseconds: 200),
        height: 250,
        fit: BoxFit.cover,

      ),
      
       Container(
         child: Text('No se que poner'),
         padding: EdgeInsets.all(10.0),
         )
    ],
    ),


  );
}