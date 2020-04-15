import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  static final pageName = 'cards';

  
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
    elevation: 5.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
  final card = Container(
    child: Column(children: <Widget>[
      
      FadeInImage(
        image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
        placeholder: AssetImage('assets/original.gif'),
        fadeInDuration: Duration (milliseconds: 200),
        height: 300,
        fit: BoxFit.cover,
      ),
      
       Container(
         child: Text('No se que poner'),
         padding: EdgeInsets.all(10.0),
         )
    ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow:<BoxShadow> [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          offset: Offset(2.0, 10.0),
          spreadRadius: 2.0
        )
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: card,
      ),
    );


}